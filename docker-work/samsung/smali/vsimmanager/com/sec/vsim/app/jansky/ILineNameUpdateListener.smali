.class public interface abstract Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;
.super Ljava/lang/Object;
.source "ILineNameUpdateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/ILineNameUpdateListener$Stub;,
        Lcom/sec/vsim/app/jansky/ILineNameUpdateListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.ILineNameUpdateListener"


# virtual methods
.method public abstract onLineNameUpdated(JLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
