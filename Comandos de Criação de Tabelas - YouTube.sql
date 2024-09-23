CREATE TABLE USER_ACCOUNT
(
	id serial NOT NULL PRIMARY KEY,
    name varchar(100) NOT NULL,
	email varchar(255) NOT NULL UNIQUE,
	birth date NOT NULL,
	pic text NOT NULL,
	premium boolean NOT NULL DEFAULT FALSE
);

CREATE TABLE CHANNEL
(
	cod char(24) NOT NULL PRIMARY KEY,
	id varchar(100) NOT NULL UNIQUE,
	userId int NOT NULL,
    name varchar(100) NOT NULL,
	descrip text,
	creationDate date NOT NULL,
	country varchar(100) NOT NULL,
	pic text NOT NULL,
	cover text,
	social1 text,
	social2 text,
	social3 text,
	social4 text,
	social5 text,
	contact varchar(255),
	subs int not null default 0,
	showSubs boolean not null default true,
	numVids int not null default 0,
	totalViews int not null default 0,
	FOREIGN KEY (userId) REFERENCES USER_ACCOUNT ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SUBSCRIPTION
(
	userId int NOT NULL,
	channel char(24) NOT NULL,
	notify boolean NOT NULL DEFAULT false,
	PRIMARY KEY (userId, channel),
	FOREIGN KEY (userId) REFERENCES USER_ACCOUNT ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (channel) REFERENCES CHANNEL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE STATUS
(
	name varchar(100) NOT NULL PRIMARY KEY,
	videoOnly boolean NOT NULL
);

CREATE TABLE CATEGORY
(
	name varchar(100) NOT NULL PRIMARY KEY
);

CREATE TABLE VIDEO
(
	cod char(11) NOT NULL PRIMARY KEY,
	channel char(24) NOT NULL,
	title varchar(100) NOT NULL,
	descrip text,
	thumb text NOT NULL,
	duration time NOT NULL,
	uploadDate timestamp NOT NULL,
	releaseDate timestamp,
	height int not null,
	width int not null,
	status varchar(100) NOT NULL,
	category varchar(100) NOT NULL,
	categoryExtra text,
	tags text,
	isLive boolean NOT NULL,
	saveLiveChat boolean DEFAULT TRUE,
	isForKids boolean NOT NULL DEFAULT FALSE,
	isAdultsOnly boolean NOT NULL DEFAULT FALSE,
	showComment boolean NOT NULL DEFAULT TRUE,
	showLikes boolean NOT NULL DEFAULT TRUE,
	monetize boolean NOT NULL DEFAULT FALSE,
	views int not null default 0,
	likes int not null default 0,
	dislikes int not null default 0,
	shares int not null default 0,
	livePeak int DEFAULT 0,
	FOREIGN KEY (channel) REFERENCES CHANNEL ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (status) REFERENCES STATUS ON UPDATE CASCADE,
	FOREIGN KEY (category) REFERENCES CATEGORY ON UPDATE CASCADE
);

CREATE TABLE VIDEO_REACTION
(
	userId int NOT NULL,
	video char(11) NOT NULL,
	isALike boolean NOT NULL,
	PRIMARY KEY (userId, video),
	FOREIGN KEY (userId) REFERENCES USER_ACCOUNT ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (video) REFERENCES VIDEO ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE DOWNLOAD
(
	userId int NOT NULL,
	video char(11) NOT NULL,
	PRIMARY KEY (userId, video),
	FOREIGN KEY (userId) REFERENCES USER_ACCOUNT ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (video) REFERENCES VIDEO ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PLAYLIST
(
	cod char(34) NOT NULL PRIMARY KEY,
	userId int NOT NULL,
	title varchar(100) NOT NULL,
	descrip text,
	status varchar(100) NOT NULL,
	creationDate timestamp NOT NULL,
	lastUpdate timestamp NOT NULL,
	totalViews int not null default 0,
	numVids int not null default 0,
	FOREIGN KEY (userId) REFERENCES USER_ACCOUNT ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (status) REFERENCES STATUS ON UPDATE CASCADE
);

CREATE TABLE INCLUSION
(
	playlist char(34) NOT NULL,
	video char(11) NOT NULL,
	date timestamp NOT NULL,
	PRIMARY KEY (playlist, video),
	FOREIGN KEY (playlist) REFERENCES PLAYLIST ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (video) REFERENCES VIDEO ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE INFRACTION
(
	id SERIAL NOT NULL PRIMARY KEY,
	video char(11) not null,
	title varchar(100) NOT NULL,
	descrip text NOT NULL,
	startTime time,
	endTime time,
	isForKids boolean NOT NULL DEFAULT FALSE,
	isAdultsOnly boolean NOT NULL DEFAULT FALSE,
	showComment boolean NOT NULL DEFAULT TRUE,
	monetize boolean NOT NULL DEFAULT FALSE,
	block boolean NOT NULL DEFAULT FALSE,
	FOREIGN KEY (video) REFERENCES VIDEO ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE COMMENT
(
	id SERIAl NOT NULL PRIMARY KEY,
	txt text not null,
	sender char(11) NOT NULL,
	respTo char(11),
	video char(11) not null,
	sendingDate timestamp not null,
	isFromLive boolean NOT NULL,
	likes int DEFAULT 0,
	dislikes int DEFAULT 0,
	FOREIGN KEY (video) REFERENCES VIDEO ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (sender) REFERENCES CHANNEL ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (respTo) REFERENCES CHANNEL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE COMMENT_REACTION
(
	userId int NOT NULL,
	comment int NOT NULL,
	isALike boolean NOT NULL,
	PRIMARY KEY (userId, comment),
	FOREIGN KEY (userId) REFERENCES USER_ACCOUNT ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (comment) REFERENCES COMMENT ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE MEMBERSHIP
(
	id SERIAl NOT NULL PRIMARY KEY,
	channel char(11) NOT NULL,
	name varchar(100) NOT NULL,
	price decimal(12,2) NOT NULL,
	descrip text,
	FOREIGN KEY (channel) REFERENCES CHANNEL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SIGNATURE
(
	userId int NOT NULL,
	membership int NOT NULL,
	startDate timestamp not null,
	endDate timestamp not null,
	PRIMARY KEY (userId, membership),
	FOREIGN KEY (userId) REFERENCES USER_ACCOUNT ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (membership) REFERENCES MEMBERSHIP ON DELETE CASCADE ON UPDATE CASCADE
);

/* Utilizada apenas para a procedure definida */

CREATE TABLE BANNED_WORDS
(
    word varchar(100) NOT NULL PRIMARY KEY
);