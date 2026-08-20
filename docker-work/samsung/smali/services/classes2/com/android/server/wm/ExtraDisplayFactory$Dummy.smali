.class public Lcom/android/server/wm/ExtraDisplayFactory$Dummy;
.super Lcom/android/server/wm/ExtraDisplayController;
.source "ExtraDisplayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ExtraDisplayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dummy"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$xRitVicCGfNlbwTlq3-W3D6R0LE()I
    .registers 1

    invoke-static {}, Lcom/android/server/wm/ExtraDisplayFactory$Dummy;->lambda$getExtraDisplayPolicy$0()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/wm/ExtraDisplayController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method public static synthetic lambda$getExtraDisplayPolicy$0()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
    .registers 1

    .line 96
    new-instance p0, Lcom/android/server/wm/ExtraDisplayFactory$Dummy$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/wm/ExtraDisplayFactory$Dummy$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method
