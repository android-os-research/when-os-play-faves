.class public interface abstract Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
.super Ljava/lang/Object;
.source "ITRNReceivedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/ITRNReceivedListener$Stub;,
        Lcom/sec/vsim/app/jansky/ITRNReceivedListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.vsim.app.jansky.ITRNReceivedListener"


# virtual methods
.method public abstract onTRNReceived(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
