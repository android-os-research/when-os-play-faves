.class public Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/util/PersistableBundleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistableBundleWrapper"
.end annotation


# instance fields
.field public final mBundle:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bundle was null"

    .line 533
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/PersistableBundle;

    iput-object p1, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 554
    instance-of v0, p1, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 558
    :cond_6
    check-cast p1, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 560
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    iget-object p1, p1, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-static {p0, p1}, Lcom/android/server/vcn/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 3

    .line 544
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 549
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-static {p0}, Lcom/android/server/vcn/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result p0

    return p0
.end method
