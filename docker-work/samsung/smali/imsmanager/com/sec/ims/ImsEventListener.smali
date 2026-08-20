.class public interface abstract Lcom/sec/ims/ImsEventListener;
.super Ljava/lang/Object;
.source "ImsEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsEventListener$Stub;,
        Lcom/sec/ims/ImsEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.ImsEventListener"


# virtual methods
.method public abstract onEvent(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
