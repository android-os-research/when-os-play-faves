.class public interface abstract Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;
.super Ljava/lang/Object;
.source "AppcoreLoggingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppcoreLoggingTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DebugConfigTool"
.end annotation


# virtual methods
.method public getCompatibleValues([ZLcom/android/server/am/AppcoreLoggingTool$Version;)[Z
    .registers 3

    return-object p1
.end method

.method public abstract getDebugConfigSize()I
.end method

.method public abstract reconfigureDebug([Z)V
.end method
