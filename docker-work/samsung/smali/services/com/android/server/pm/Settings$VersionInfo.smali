.class public Lcom/android/server/pm/Settings$VersionInfo;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public databaseVersion:I

.field public fingerprint:Ljava/lang/String;

.field public sdkVersion:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceCurrent()V
    .registers 2

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/4 v0, 0x3

    .line 475
    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 476
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    return-void
.end method
