.class public interface abstract Lcom/sec/vsim/app/jansky/ILineTypeReceivedListener;
.super Ljava/lang/Object;
.source "ILineTypeReceivedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/ILineTypeReceivedListener$Stub;,
        Lcom/sec/vsim/app/jansky/ILineTypeReceivedListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.ILineTypeReceivedListener"


# virtual methods
.method public abstract onLineTypeReceived(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
