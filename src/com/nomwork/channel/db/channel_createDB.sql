DROP    SEQUENCE CHANNEL_CREATENOSEQ;
CREATE  SEQUENCE CHANNEL_CREATENOSEQ;

CREATE TABLE CHANNEL_CREATE(
    CHANNEL_CREATENO    NUMBER PRIMARY KEY
    ,USERNO             NUMBER NOT NULL
    ,CHANNELNO          NUMBER NOT NULL
    ,PROJECTNO          NUMBER NOT NULL
,CONSTRAINT CC_FK_USERNO    FOREIGN KEY(USERNO)     REFERENCES USERINFO(USERNO)
,CONSTRAINT CC_FK_CHANELNO  FOREIGN KEY(CHANNELNO)  REFERENCES CHANNEL(CHANNELNO)
,CONSTRAINT CC_FK_PROJECTNO FOREIGN KEY(PROJECTNO)  REFERENCES PROJECT(PROJECTNO)
);