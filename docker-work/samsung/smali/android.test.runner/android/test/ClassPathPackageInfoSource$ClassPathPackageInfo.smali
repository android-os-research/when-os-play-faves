.class Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
.super Ljava/lang/Object;
.source "ClassPathPackageInfoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ClassPathPackageInfoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassPathPackageInfo"
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final subpackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/test/ClassPathPackageInfoSource;

.field private final topLevelClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetTopLevelClassesRecursive(Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->getTopLevelClassesRecursive()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 221
    .local p3, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "topLevelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iput-object p1, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->this$0:Landroid/test/ClassPathPackageInfoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->packageName:Ljava/lang/String;

    .line 223
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->subpackageNames:Ljava/util/Set;

    .line 224
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->topLevelClasses:Ljava/util/Set;

    .line 225
    return-void
.end method

.method synthetic constructor <init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;-><init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private addTopLevelClassesTo(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 242
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->topLevelClasses:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-direct {p0}, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->getSubpackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;

    .line 244
    .local v1, "info":Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
    invoke-direct {v1, p1}, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->addTopLevelClassesTo(Ljava/util/Set;)V

    .line 245
    .end local v1    # "info":Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
    goto :goto_d

    .line 246
    :cond_1d
    return-void
.end method

.method private getSubpackages()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    .local v0, "info":Ljava/util/Set;, "Ljava/util/Set<Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;>;"
    iget-object v1, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->subpackageNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->this$0:Landroid/test/ClassPathPackageInfoSource;

    invoke-static {v3}, Landroid/test/ClassPathPackageInfoSource;->-$$Nest$fgetcache(Landroid/test/ClassPathPackageInfoSource;)Landroid/test/SimpleCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/test/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_b

    .line 232
    :cond_27
    return-object v0
.end method

.method private getTopLevelClassesRecursive()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 237
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, v0}, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->addTopLevelClassesTo(Ljava/util/Set;)V

    .line 238
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 250
    instance-of v0, p1, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;

    if-eqz v0, :cond_10

    .line 251
    move-object v0, p1

    check-cast v0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;

    .line 252
    .local v0, "that":Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
    iget-object v1, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 254
    .end local v0    # "that":Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
