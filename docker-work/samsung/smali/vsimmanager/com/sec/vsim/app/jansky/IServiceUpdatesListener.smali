.class public interface abstract Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
.super Ljava/lang/Object;
.source "IServiceUpdatesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Stub;,
        Lcom/sec/vsim/app/jansky/IServiceUpdatesListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.IServiceUpdatesListener"


# virtual methods
.method public abstract onServiceUpdated(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
