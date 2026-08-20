.class public abstract Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;
.super Ljava/lang/Object;
.source "CameraManagerCompat_V1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraManagerCompat_V1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatusCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onClose()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSessionCreated(Ljava/lang/Object;)V
.end method
