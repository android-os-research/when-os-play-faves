.class public interface abstract Lcom/mediatek/common/operamax/ILoaderStateListener;
.super Ljava/lang/Object;
.source "ILoaderStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;,
        Lcom/mediatek/common/operamax/ILoaderStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.operamax.ILoaderStateListener"


# virtual methods
.method public abstract blacklist onSavingState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTunnelState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
