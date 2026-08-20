.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
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

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 233
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
