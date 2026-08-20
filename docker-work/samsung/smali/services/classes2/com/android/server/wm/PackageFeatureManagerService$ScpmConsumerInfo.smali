.class public Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;
.super Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;
.source "PackageFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScpmConsumerInfo"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "hz6wdikdtw"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final RECEIVER_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 52
    sget-object v0, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    const-string v1, "android"

    const-string v2, "hz6wdikdtw"

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;-><init>()V

    return-void
.end method
