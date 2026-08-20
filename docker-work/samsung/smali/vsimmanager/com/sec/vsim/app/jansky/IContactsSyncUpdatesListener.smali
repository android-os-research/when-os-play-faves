.class public interface abstract Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
.super Ljava/lang/Object;
.source "IContactsSyncUpdatesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;,
        Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.IContactsSyncUpdatesListener"


# virtual methods
.method public abstract onContactDownloaded(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onContactUploaded(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUpdatedContactUploaded(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
