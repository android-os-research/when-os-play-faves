.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;
    .registers 2

    check-cast p1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromParcelUuid(Landroid/os/ParcelUuid;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method
