.class public Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;
.super Ljava/lang/Object;
.source "BackupServiceFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/BackupServiceFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;
    .registers 1

    .line 21
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BackupServiceFilter$BackupServiceFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/BackupServiceFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 5

    .line 35
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/am/MARsPolicyManager;->isBackupServicePkg(I)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0x1b

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
