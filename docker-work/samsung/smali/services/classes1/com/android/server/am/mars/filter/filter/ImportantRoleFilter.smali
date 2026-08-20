.class public Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;
.super Ljava/lang/Object;
.source "ImportantRoleFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;
    }
.end annotation


# static fields
.field public static final ROLE_SYSTEM_GALLERY:Ljava/lang/String; = "android.app.role.SYSTEM_GALLERY"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mSecureFolderUserId:I

.field public mSystemGalleryHolderList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;
    .registers 1

    .line 30
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 5

    .line 65
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_17

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/16 p0, 0x17

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getSystemGalleryHolder(I)V
    .registers 5

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.SYSTEM_GALLERY"

    .line 77
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 78
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 79
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_53

    :catch_38
    move-exception p1

    .line 82
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->setContext(Landroid/content/Context;)V

    .line 44
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->getSystemGalleryHolder(I)V

    if-nez p1, :cond_2e

    .line 48
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p1, :cond_2e

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxId(IZ)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSecureFolderUserId:I

    const/16 v0, 0x96

    if-lt p1, v0, :cond_2e

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_2e

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->getSystemGalleryHolder(I)V

    :cond_2e
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    return-void
.end method
