.class public Lcom/android/server/wm/PackageSettingsManager$LazyHolder;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/android/server/wm/PackageSettingsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/PackageSettingsManager;-><init>(Lcom/android/server/wm/PackageSettingsManager-IA;)V

    sput-object v0, Lcom/android/server/wm/PackageSettingsManager$LazyHolder;->sPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
