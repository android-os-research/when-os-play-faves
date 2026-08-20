.class public interface abstract Lcom/log/handler/jni/IJNI;
.super Ljava/lang/Object;
.source "IJNI.java"


# direct methods
.method public static getServer(Ljava/lang/String;)Lcom/log/handler/jni/IJNI;
    .registers 2
    .param p0, "serverName"    # Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/log/handler/jni/AbstractJNIServer;->getServer(Ljava/lang/String;)Lcom/log/handler/jni/IJNI;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract sendDataToServer(Ljava/lang/String;)Ljava/lang/String;
.end method
