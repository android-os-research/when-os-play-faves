.class public Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;
.super Ljava/lang/Object;
.source "ApplicationRestrictionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;
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

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActivityManager()Landroid/app/ActivityManager;
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method
