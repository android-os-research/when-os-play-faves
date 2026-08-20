.class public final Landroid/content/ContextParams;
.super Ljava/lang/Object;
.source "ContextParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContextParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist EMPTY:Landroid/content/ContextParams;


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mNext:Landroid/content/AttributionSource;

.field private final blacklist mRenouncedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionTag(Landroid/content/ContextParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContextParams;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNext(Landroid/content/ContextParams;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/content/ContextParams;->mNext:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenouncedPermissions(Landroid/content/ContextParams;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/content/ContextParams;->mRenouncedPermissions:Ljava/util/Set;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/content/ContextParams$Builder;

    invoke-direct {v0}, Landroid/content/ContextParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v0

    sput-object v0, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;)V
    .registers 5
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "next"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/AttributionSource;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p3, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/content/ContextParams;->mAttributionTag:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Landroid/content/ContextParams;->mNext:Landroid/content/AttributionSource;

    .line 62
    if-eqz p3, :cond_b

    .line 63
    move-object v0, p3

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Landroid/content/ContextParams;->mRenouncedPermissions:Ljava/util/Set;

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;Landroid/content/ContextParams-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContextParams;-><init>(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/content/ContextParams;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNextAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/content/ContextParams;->mNext:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public whitelist getRenouncedPermissions()Ljava/util/Set;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/content/ContextParams;->mRenouncedPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist isRenouncedPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Landroid/content/ContextParams;->mRenouncedPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
