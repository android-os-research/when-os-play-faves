.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda134;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda134;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda134;->f$1:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda134;->f$2:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda134;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda134;->f$1:Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda134;->f$2:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->$r8$lambda$niJ1yp2hH_T7lVzxjDcPoYI9d8s(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
