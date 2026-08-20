.class public interface abstract Lcom/mediatek/ims/internal/IVoDataService;
.super Ljava/lang/Object;
.source "IVoDataService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IVoDataService$Stub;,
        Lcom/mediatek/ims/internal/IVoDataService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IVoDataService"


# virtual methods
.method public abstract blacklist getEnabled(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setEnabled(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
