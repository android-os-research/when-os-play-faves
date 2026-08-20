.class public Lcom/android/server/desktopmode/DesktopModeLogger$LazyHolder;
.super Ljava/lang/Object;
.source "DesktopModeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final SUPPORT_DMA:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 105
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeLogger$LazyHolder;->isDmaSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/desktopmode/DesktopModeLogger$LazyHolder;->SUPPORT_DMA:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDmaSupported()Z
    .registers 6

    .line 108
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    const-string v2, "com.sec.android.diagmonagent"

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 112
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 113
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeLogger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "versionCode of DMA package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const-wide/32 v4, 0x202fbf00

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    return v1
.end method
