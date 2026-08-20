.class public interface abstract Lcom/log/handler/connection/ILogConnection;
.super Ljava/lang/Object;
.source "ILogConnection.java"


# virtual methods
.method public abstract addServerObserver(Ljava/util/Observer;)V
.end method

.method public abstract connect()Z
.end method

.method public abstract deleteServerObserver(Ljava/util/Observer;)V
.end method

.method public abstract disConnect()V
.end method

.method public abstract getResponseFromServer(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isConnection()Z
.end method

.method public abstract sendToServer(Ljava/lang/String;)Z
.end method
