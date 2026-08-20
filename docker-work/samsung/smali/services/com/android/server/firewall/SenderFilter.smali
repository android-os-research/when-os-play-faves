.class public Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "SenderFilter.java"


# static fields
.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field public static final SIGNATURE:Lcom/android/server/firewall/Filter;

.field public static final SYSTEM:Lcom/android/server/firewall/Filter;

.field public static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

.field public static final USER_ID:Lcom/android/server/firewall/Filter;

.field public static final VAL_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final VAL_SYSTEM:Ljava/lang/String; = "system"

.field public static final VAL_SYSTEM_OR_SIGNATURE:Ljava/lang/String; = "system|signature"

.field public static final VAL_USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method public static bridge synthetic -$$Nest$sfgetSIGNATURE()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSYSTEM()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSYSTEM_OR_SIGNATURE()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetUSER_ID()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    const-string/jumbo v1, "sender"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    .line 80
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$2;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 88
    new-instance v0, Lcom/android/server/firewall/SenderFilter$3;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$3;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    .line 96
    new-instance v0, Lcom/android/server/firewall/SenderFilter$4;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$4;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 105
    new-instance v0, Lcom/android/server/firewall/SenderFilter$5;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$5;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrivilegedApp(II)Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-eq p0, v1, :cond_29

    if-eqz p0, :cond_29

    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq p1, v1, :cond_29

    if-nez p1, :cond_10

    goto :goto_29

    .line 46
    :cond_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 48
    :try_start_15
    invoke-interface {p1, p0}, Landroid/content/pm/IPackageManager;->getPrivateFlagsForUid(I)I

    move-result p0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_20

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0

    :catch_20
    move-exception p0

    const-string p1, "IntentFirewall"

    const-string v0, "Remote exception while retrieving uid flags"

    .line 51
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_29
    :goto_29
    return v0
.end method
