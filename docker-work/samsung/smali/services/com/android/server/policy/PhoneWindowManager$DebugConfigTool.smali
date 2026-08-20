.class public Lcom/android/server/policy/PhoneWindowManager$DebugConfigTool;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/am/AppcoreLoggingTool$DebugConfigTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugConfigTool"
.end annotation


# static fields
.field public static final SIZE_FOR_S:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompatibleValues([ZLcom/android/server/am/AppcoreLoggingTool$Version;)[Z
    .registers 7

    .line 296
    sget-object v0, Lcom/android/server/am/AppcoreLoggingTool$Version;->S:Lcom/android/server/am/AppcoreLoggingTool$Version;

    if-ne p2, v0, :cond_24

    array-length p2, p1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_24

    .line 297
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$DebugConfigTool;->getDebugConfigSize()I

    move-result p0

    new-array p0, p0, [Z

    const/4 p2, 0x0

    move v1, p2

    :goto_10
    if-ge p2, v0, :cond_23

    const/4 v2, 0x3

    if-eq p2, v2, :cond_20

    const/4 v2, 0x5

    if-ne p2, v2, :cond_19

    goto :goto_20

    :cond_19
    add-int/lit8 v2, v1, 0x1

    .line 304
    aget-boolean v3, p1, p2

    aput-boolean v3, p0, v1

    move v1, v2

    :cond_20
    :goto_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_23
    return-object p0

    :cond_24
    return-object p1
.end method

.method public getDebugConfigSize()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public reconfigureDebug([Z)V
    .registers 2

    const/4 p0, 0x0

    .line 288
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    const/4 p0, 0x1

    .line 289
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const/4 p0, 0x2

    .line 290
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    const/4 p0, 0x3

    .line 291
    aget-boolean p0, p1, p0

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    return-void
.end method
