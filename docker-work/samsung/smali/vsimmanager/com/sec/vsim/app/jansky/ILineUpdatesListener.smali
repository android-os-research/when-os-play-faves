.class public interface abstract Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
.super Ljava/lang/Object;
.source "ILineUpdatesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/ILineUpdatesListener$Stub;,
        Lcom/sec/vsim/app/jansky/ILineUpdatesListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.ILineUpdatesListener"


# virtual methods
.method public abstract onLinesUpdated(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
