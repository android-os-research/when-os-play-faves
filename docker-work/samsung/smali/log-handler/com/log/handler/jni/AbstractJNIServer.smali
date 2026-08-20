.class public abstract Lcom/log/handler/jni/AbstractJNIServer;
.super Ljava/lang/Object;
.source "AbstractJNIServer.java"

# interfaces
.implements Lcom/log/handler/jni/IJNI;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getServer(Ljava/lang/String;)Lcom/log/handler/jni/IJNI;
    .registers 2
    .param p0, "serverName"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
