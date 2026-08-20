.class public interface abstract Lcom/silead/internal/IFingerService;
.super Ljava/lang/Object;
.source "IFingerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/silead/internal/IFingerService$Stub;,
        Lcom/silead/internal/IFingerService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.silead.internal.IFingerService"


# virtual methods
.method public abstract testCmd(Landroid/os/IBinder;I[BLcom/silead/internal/IFingerServiceReceiver;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
