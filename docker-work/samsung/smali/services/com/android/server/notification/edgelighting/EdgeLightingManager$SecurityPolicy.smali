.class public final Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final PERMISSION_EDGE_LIGHTING_HOST:Ljava/lang/String; = "com.samsung.android.permission.EDGE_LIGHTING_HOST"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$menforceCallingPermission(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    .line 1164
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public enforceCallFromPackage(Ljava/lang/String;)V
    .registers 3

    .line 1172
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .registers 7

    .line 1176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1178
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 1182
    :cond_f
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_1e

    return-void

    .line 1186
    :cond_1e
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", you need system uid or to be signed with the system certificate."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforceCallingPermissionFromHost()V
    .registers 3

    .line 1168
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.permission.EDGE_LIGHTING_HOST"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
