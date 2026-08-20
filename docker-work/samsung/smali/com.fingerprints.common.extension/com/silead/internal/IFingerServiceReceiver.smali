.class public interface abstract Lcom/silead/internal/IFingerServiceReceiver;
.super Ljava/lang/Object;
.source "IFingerServiceReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/silead/internal/IFingerServiceReceiver$Stub;,
        Lcom/silead/internal/IFingerServiceReceiver$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.silead.internal.IFingerServiceReceiver"


# virtual methods
.method public abstract onTestCmd(I[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
