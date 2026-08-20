.class public Lcom/android/server/am/mars/filter/FilterChainFactory;
.super Ljava/lang/Object;
.source "FilterChainFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;
    }
.end annotation


# static fields
.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_ANGRYBIRD:I = 0xf

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x2

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_AUTORUN:I = 0x3

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_BLOCKLIST:I = 0xe

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_CALM_MODE:I = 0x13

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_CHIMERA:I = 0x12

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_DBUPDATE:I = 0xa

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_DISABLER:I = 0x7

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_EMERGENCYKILL:I = 0xc

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_FORCE:I = 0x1

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_FREECESS:I = 0x4

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_GAME:I = 0x9

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_LEVEL:I = 0xd

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_MANUAL_DISABLER:I = 0x8

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_MPSM:I = 0x11

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_OLAF:I = 0xb

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_RAGEBIRD:I = 0x10

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_RECENTKILL:I = 0x14

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_SBIKE:I = 0x6

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_UDS:I = 0x5

.field public static final MAX_COLLECTIONS:I = 0x15


# instance fields
.field public filterHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/mars/filter/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/FilterChainFactory-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;
    .registers 1

    .line 41
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getAngryBirdFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 332
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 333
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x6

    .line 334
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x8

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 337
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 341
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x10

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x13

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 346
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getAppLockerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 104
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 105
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getAutoRunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 120
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 121
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 126
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x8

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x10

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getBlockListFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 325
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 326
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x1

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getCalmModeFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 260
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 261
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x6

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 264
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 265
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 266
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 267
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x13

    .line 269
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x14

    .line 270
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x19

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getDBUpdateFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 277
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 278
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 281
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 282
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 204
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 205
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x4

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x16

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x17

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1a

    .line 217
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getEmergencyKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 299
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 300
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x1

    .line 301
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 302
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x10

    .line 304
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 305
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 308
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 309
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 310
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 311
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 312
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public getFilterChain(I)Lcom/android/server/am/mars/filter/FilterChain;
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/filter/FilterChain;

    return-object p0
.end method

.method public final getForceFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 80
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 81
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/16 v1, 0x9

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getFreecessFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 143
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 144
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x1

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x8

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x13

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getGameFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 239
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 240
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 243
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 245
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 251
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x14

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x19

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getLevelFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 317
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 318
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/16 v1, 0xf

    .line 319
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getMPSMFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 177
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 178
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x6

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getManualDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 224
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 225
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x4

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x16

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x17

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1a

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getOLAFFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 289
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 290
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x6

    .line 291
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 294
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getRageBirdFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 351
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 352
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/16 v1, 0x8

    .line 354
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 358
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x10

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 363
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x13

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x18

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 366
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 368
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getRecentKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 92
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 93
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/16 v1, 0x9

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getSBIKERunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 188
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 189
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 196
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 197
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getUDSFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 3

    .line 162
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 163
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 172
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterChainFactory;->setContext(Landroid/content/Context;)V

    .line 50
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getForceFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getAppLockerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getAutoRunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getFreecessFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getUDSFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getSBIKERunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getManualDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getGameFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getCalmModeFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getDBUpdateFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getOLAFFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getEmergencyKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getLevelFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getBlockListFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getAngryBirdFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getRageBirdFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getMPSMFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getRecentKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->mContext:Landroid/content/Context;

    return-void
.end method
