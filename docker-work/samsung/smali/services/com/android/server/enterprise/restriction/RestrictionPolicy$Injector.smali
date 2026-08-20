.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getConstrainedState()Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object p0

    return-object p0
.end method

.method public getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 354
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
