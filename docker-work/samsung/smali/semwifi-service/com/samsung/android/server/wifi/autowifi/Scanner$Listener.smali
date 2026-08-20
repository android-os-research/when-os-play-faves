.class public interface abstract Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onNetworkFound(Ljava/lang/String;)V
.end method

.method public abstract onNetworkNotFound()V
.end method
