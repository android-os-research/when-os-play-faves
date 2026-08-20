.class public interface abstract Lcom/sec/vsim/app/jansky/IPushNotificationListener;
.super Ljava/lang/Object;
.source "IPushNotificationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/IPushNotificationListener$Stub;,
        Lcom/sec/vsim/app/jansky/IPushNotificationListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.IPushNotificationListener"


# virtual methods
.method public abstract onPushNotificationReceived()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
