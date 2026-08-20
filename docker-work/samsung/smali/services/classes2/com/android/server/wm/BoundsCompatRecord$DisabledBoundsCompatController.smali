.class public Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;
.super Ljava/lang/Object;
.source "BoundsCompatRecord.java"

# interfaces
.implements Lcom/android/server/wm/BoundsCompatController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisabledBoundsCompatController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController$LazyHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;
    .registers 1

    .line 387
    sget-object v0, Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;

    return-object v0
.end method


# virtual methods
.method public isBoundsCompatEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
