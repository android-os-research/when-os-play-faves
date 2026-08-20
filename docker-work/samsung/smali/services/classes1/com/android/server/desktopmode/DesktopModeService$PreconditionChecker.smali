.class public interface abstract Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;
.super Ljava/lang/Object;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreconditionChecker"
.end annotation


# virtual methods
.method public abstract isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z
.end method

.method public abstract isDesktopModeAvailableEx(ZZ)Z
.end method

.method public abstract updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)Z
.end method
