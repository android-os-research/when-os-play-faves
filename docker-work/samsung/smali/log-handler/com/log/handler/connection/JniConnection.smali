.class public Lcom/log/handler/connection/JniConnection;
.super Lcom/log/handler/connection/AbstractLogConnection;
.source "JniConnection.java"


# instance fields
.field public mJNI:Lcom/log/handler/jni/IJNI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "serverName"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/log/handler/connection/AbstractLogConnection;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/log/handler/connection/JniConnection;->mJNI:Lcom/log/handler/jni/IJNI;

    .line 19
    return-void
.end method


# virtual methods
.method public connect()Z
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/log/handler/connection/JniConnection;->mServerName:Ljava/lang/String;

    invoke-static {v0}, Lcom/log/handler/jni/IJNI;->getServer(Ljava/lang/String;)Lcom/log/handler/jni/IJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/log/handler/connection/JniConnection;->mJNI:Lcom/log/handler/jni/IJNI;

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public isConnection()Z
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/log/handler/connection/JniConnection;->mJNI:Lcom/log/handler/jni/IJNI;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected sendDataToServer(Ljava/lang/String;)Z
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/log/handler/connection/JniConnection;->mJNI:Lcom/log/handler/jni/IJNI;

    if-nez v0, :cond_6

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_6
    invoke-interface {v0, p1}, Lcom/log/handler/jni/IJNI;->sendDataToServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "response":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/log/handler/connection/JniConnection;->setResponseFromServer(Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x1

    return v1
.end method
