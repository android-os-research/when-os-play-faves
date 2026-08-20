.class public Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;
.super Ljava/lang/Object;
.source "NSPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/NSPermissionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidState"
.end annotation


# instance fields
.field public capability:I

.field public state:I


# direct methods
.method public static bridge synthetic -$$Nest$fputcapability(Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstate(Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    .line 108
    iput p2, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/server/location/nsflp/NSPermissionHelper$UidState-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getProcState()I
    .registers 1

    .line 112
    iget p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    return p0
.end method

.method public hasLocationCapability()Z
    .registers 2

    .line 116
    iget p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
