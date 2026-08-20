.class public final Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$Builder;
.super Ljava/lang/Object;
.source "NearbyDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mBleMac:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 66
    new-instance v0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$Builder;->mBleMac:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;-><init>(Ljava/lang/String;Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$1;)V

    return-object v0
.end method

.method public setBleMac(Ljava/lang/String;)Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$Builder;->mBleMac:Ljava/lang/String;

    return-object p0
.end method
