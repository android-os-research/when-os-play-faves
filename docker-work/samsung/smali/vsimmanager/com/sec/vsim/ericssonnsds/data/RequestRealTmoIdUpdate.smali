.class public Lcom/sec/vsim/ericssonnsds/data/RequestRealTmoIdUpdate;
.super Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginRequest;
.source "RequestRealTmoIdUpdate.java"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public emailId:Ljava/lang/String;

.field public pswd:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginRequest;-><init>()V

    return-void
.end method
