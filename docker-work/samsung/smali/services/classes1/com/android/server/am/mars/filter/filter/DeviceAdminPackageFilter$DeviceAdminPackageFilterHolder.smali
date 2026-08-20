.class public Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;
.super Ljava/lang/Object;
.source "DeviceAdminPackageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceAdminPackageFilterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;
    .registers 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;-><init>(Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
