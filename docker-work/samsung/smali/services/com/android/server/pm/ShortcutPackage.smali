.class public Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# static fields
.field public static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field public static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field public static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field public static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field public static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field public static final ATTR_DISABLED_REASON:Ljava/lang/String; = "disabled-reason"

.field public static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field public static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field public static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field public static final ATTR_ICON_URI:Ljava/lang/String; = "icon-uri"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field public static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field public static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field public static final ATTR_LOCUS_ID:Ljava/lang/String; = "locus-id"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field public static final ATTR_PERSON_IS_BOT:Ljava/lang/String; = "is-bot"

.field public static final ATTR_PERSON_IS_IMPORTANT:Ljava/lang/String; = "is-important"

.field public static final ATTR_PERSON_KEY:Ljava/lang/String; = "key"

.field public static final ATTR_PERSON_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PERSON_URI:Ljava/lang/String; = "uri"

.field public static final ATTR_RANK:Ljava/lang/String; = "rank"

.field public static final ATTR_SCHEMA_VERSON:Ljava/lang/String; = "schema-version"

.field public static final ATTR_SPLASH_SCREEN_THEME_NAME:Ljava/lang/String; = "splash-screen-theme-name"

.field public static final ATTR_TEXT:Ljava/lang/String; = "text"

.field public static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field public static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field public static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final ATTR_TITLE:Ljava/lang/String; = "title"

.field public static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field public static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field public static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field public static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field public static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field public static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field public static final NAME_CAPABILITY:Ljava/lang/String; = "capability"

.field public static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final TAG:Ljava/lang/String; = "ShortcutService"

.field public static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field public static final TAG_INTENT:Ljava/lang/String; = "intent"

.field public static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field public static final TAG_MAP_XMLUTILS:Ljava/lang/String; = "map"

.field public static final TAG_PERSON:Ljava/lang/String; = "person"

.field public static final TAG_ROOT:Ljava/lang/String; = "package"

.field public static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"

.field public static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field public static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field public mApiCallCount:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mIsAppSearchSchemaUpToDate:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastKnownForegroundElapsedTime:J

.field public mLastResetTime:J

.field public final mPackageUid:I

.field public final mShareTargets:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mShortcutTypeRankAndTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mShortcuts:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTransientShortcuts:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0M6EZfQxxFOfk7F0QJGaVQyqEIg(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutService;Landroid/content/res/Resources;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$rescanPackageIfNeeded$17(Lcom/android/server/pm/ShortcutService;Landroid/content/res/Resources;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0OPViTpSXmR_8CBmG2JSATOA2Mo(ILandroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$onRestored$0(ILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0UdIHEwuxg5G2MZrU1bPsB83eoA(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$removeAllShortcutsAsync$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$0crm9wh7qP6qUjCNDC4G8HJ7mvQ(JILandroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$adjustRanks$27(JILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0gxqBNSscTVfDrT9L4lOUaumHLU(ILjava/io/PrintWriter;Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$dumpShortcuts$30(ILjava/io/PrintWriter;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1aARJaFHLeU5dR1dDrc8-gXXlcE(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$publishManifestShortcuts$18(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1s5gHY84VGwq2QMyW02T0d18NKU(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$enableWithId$9(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$20zZy67G0lDgeTjE_L9OZUuWkBA(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;Landroid/app/appsearch/AppSearchSession;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$pushDynamicShortcut$2(Landroid/content/pm/ShortcutInfo;Landroid/app/appsearch/AppSearchSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2_YVBZX_KHuWevIb30t320CbluM(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$disableWithId$7(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2dYnG6SKBdCA0R5wfJRozkeiR30(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$verifyStates$35(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$35mOYlSmWNgb6th2lkddMyqi6rM(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$verifyStates$34(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4PYZebrUYqBUoz5Udgf4Kih7bUc(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;ZLandroid/content/pm/ShortcutInfo;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/ShortcutPackage;->lambda$findAll$13(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;ZLandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6SaFfaBFk3shZAw9COlKJ2ZDUno(Lcom/android/server/pm/ShortcutPackage;Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutPackage;->lambda$areAllActivitiesStillEnabled$15(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7LL9cTaDXTfD2VhbDPe0pKu4_QE(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$getTopShortcutsFromPersistence$49(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8fFfsOGBBX3YmpIy70fJ01kZrL8(Lcom/android/server/pm/ShortcutPackage;Landroid/app/appsearch/AppSearchSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$removeAllShortcutsAsync$40(Landroid/app/appsearch/AppSearchSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AWawGdNdX6KoRrat2xC9f8D5Fas(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$sortShortcutsToActivities$21(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BxmhWBS6YNhMCGreWgpnWLZy4Dg(Landroid/content/pm/ShortcutInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$refreshPinnedFlags$11(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EJV4DnkhocmsrQE2vVqBO8jixzE(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$removeShortcutAsync$44(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HYzDHRoMY6mkIJEzmpA-j98ZgiA(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$new$25(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JcaBN-NJ8IttrR1m_05KvWhTii8(Ljava/util/function/Consumer;Landroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$forEachShortcut$37(Ljava/util/function/Consumer;Landroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JkO4sj9VCYtuY-BJgBDA7ldenrE(Lcom/android/server/pm/ShortcutPackage;Landroid/app/appsearch/AppSearchSession;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->setupSchema(Landroid/app/appsearch/AppSearchSession;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KbRzzeRREps8hnu-lcjYjhUUhb0(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$setupSchema$38(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lq03p5FnZxHc6KMgHAtQEwAI43g(Landroid/content/res/Resources;Lcom/android/server/pm/ShortcutService;Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$resolveResourceStrings$24(Landroid/content/res/Resources;Lcom/android/server/pm/ShortcutService;Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MavLPDHprcGWAWXKzltHxG1Gdls(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$getTopShortcutsFromPersistence$50(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NR2mRrRFN3H4xNSf6AEYY3pp4tQ(Ljava/io/PrintWriter;Ljava/lang/String;[JLandroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$dump$29(Ljava/io/PrintWriter;Ljava/lang/String;[JLandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NW_BlqO5oJ0T7WDdjnZwJTwW9q4(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$getUsedBitmapFilesLocked$14(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NY1JYnUg0pUP_en60nn5uMwV994(Ljava/util/Set;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$refreshPinnedFlags$12(Ljava/util/Set;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O0ifF4kGWFo-nnxRnQg1elUXRCI(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchSession;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$getShortcutByIdsAsync$42(Ljava/util/Set;Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OeDCN9CXki4AcSBC9MRj6rGoxBw(Landroid/app/appsearch/AppSearchResult;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$removeAllShortcutsAsync$39(Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PJU5gj5R8AbvJ9ODv1td9oOVTt0(Landroid/content/pm/ShortcutInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$deleteLongLivedWithId$6(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PuhFSNR8lHBaGaZalvPI7jBfsIM([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$hasNoShortcut$32([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QF7x7rXba-FIGSb2qUnY0-MDqiw(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$getTopShortcutsFromPersistence$51(Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UehR-P-BkB15TB1B5HHnWYm8ya0(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$saveShortcutsAsync$46(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ui53cDHU4-qulL_9oXe7cFGopdE([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$hasNonManifestShortcuts$28([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XChRGvAwcEHGvpwtq4ujIVi-D2c(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$new$19(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XcaT9tBQ-G0dshlavkt83zIhWH8(Lcom/android/server/pm/ShortcutPackage;Landroid/util/ArrayMap;ILandroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$enforceShortcutCountsBeforeOperation$23(Landroid/util/ArrayMap;ILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XvuWViDFCzNxEsdabvFKjGQRhcc(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$saveShortcutsAsync$47(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYZvXdhA6aOwpV-3q87OVTYgDGY(Lcom/android/server/pm/ShortcutPackage;ZILandroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$deleteOrDisableWithId$8(ZILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YjQm5Twf8LTTsOfXYuwGUyFAenU(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$verifyStates$33(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bbXlUrYcBpaQgK3Tbbxj8XK73To(Lcom/android/server/pm/ShortcutPackage;Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$getTopShortcutsFromPersistence$48(Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cH-qcBeOVDAGYA43npcscK6JPpw(Lcom/android/server/pm/ShortcutPackage;JLandroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$rescanPackageIfNeeded$16(JLandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hxp8u93GEFuJgTIElv9au5fU5Do(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$new$20(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iB8C8TpxGSLqXXJ3CsYvFEZE6wo(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$refreshPinnedFlags$10(Ljava/util/Set;Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iUzQGRO7JPb8IqtniE_r2Ub9gNM(Lcom/android/server/pm/ShortcutPackage;Landroid/util/ArrayMap;Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$sortShortcutsToActivities$22(Landroid/util/ArrayMap;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ikTOlzgpM_CNr71dEkkRy4N-b7U(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$ensureShortcutCountBeforePush$4(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j2BtkWExLjQ-QZkoJdl0cZraAIM(Landroid/app/appsearch/AppSearchResult;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackage;->lambda$pushDynamicShortcut$1(Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mZoL0U8gy8SWY9kTfvwLr7G-r8k(Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$removeOrphans$5(Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nCV91vcTPd0zP1kb8JwVfAnVrqs(Lcom/android/server/pm/ShortcutPackage;[ZLcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->lambda$verifyStates$36([ZLcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pAY4PjRnpYezYMjvY8LesHQpnFk(JLandroid/content/pm/ShortcutInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$adjustRanks$26(JLandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sap1TNxioM-9a8mmmcfnAH1WolY(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$getShortcutByIdsAsync$43(Ljava/util/Set;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vGo2JEWQ9A8CqIPbtVeP1KaFYWo(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$removeShortcutAsync$45(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCmMnSwR2VzNbRW-qxlrdGOSHPw(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$pushDynamicShortcut$3(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x-sfTcupv21RqH_OiznP4Rsp-Y0([I[I[I[I[JLandroid/content/pm/ShortcutInfo;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/ShortcutPackage;->lambda$dumpCheckin$31([I[I[I[I[JLandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 6

    if-eqz p4, :cond_3

    goto :goto_7

    .line 205
    :cond_3
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p4

    .line 204
    :goto_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 169
    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 176
    new-instance p4, Landroid/util/ArrayMap;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    .line 182
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 1395
    new-instance p4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;

    invoke-direct {p4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    .line 1417
    new-instance p4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;

    invoke-direct {p4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeRankAndTimeComparator:Ljava/util/Comparator;

    .line 1600
    new-instance p4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;

    invoke-direct {p4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    .line 207
    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 208
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1054
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-object p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 1058
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$adjustRanks$26(JLandroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 1635
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    if-eqz v0, :cond_13

    .line 1636
    invoke-virtual {p2, p0, p1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    const/4 p0, 0x0

    .line 1637
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    :cond_13
    return-void
.end method

.method public static synthetic lambda$adjustRanks$27(JILandroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 1670
    invoke-virtual {p3, p0, p1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1671
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    return-void
.end method

.method private synthetic lambda$areAllActivitiesStillEnabled$15(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 6

    .line 1074
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p4

    .line 1076
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1077
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1079
    :cond_d
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_23

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result p0

    invoke-virtual {p2, p4, p0}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result p0

    if-nez p0, :cond_23

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 1083
    aput-boolean p1, p3, p0

    .line 1084
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 1086
    :cond_23
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$deleteLongLivedWithId$6(Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    const v0, 0x60004000

    .line 613
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void
.end method

.method private synthetic lambda$deleteOrDisableWithId$8(ZILandroid/content/pm/ShortcutInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 670
    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    const/16 v0, 0x21

    .line 671
    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    if-eqz p1, :cond_19

    const/16 p1, 0x40

    .line 673
    invoke-virtual {p3, p1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 675
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result p1

    if-nez p1, :cond_19

    .line 676
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 679
    :cond_19
    iget-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 682
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x0

    .line 683
    invoke-virtual {p3, p0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    :cond_36
    return-void
.end method

.method private synthetic lambda$disableWithId$7(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V
    .registers 4

    if-eqz p3, :cond_14

    if-eqz p1, :cond_8

    .line 638
    invoke-virtual {p3, p1}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    goto :goto_14

    :cond_8
    if-eqz p2, :cond_14

    .line 640
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    .line 641
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public static synthetic lambda$dump$29(Ljava/io/PrintWriter;Ljava/lang/String;[JLandroid/content/pm/ShortcutInfo;)V
    .registers 8

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1732
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1733
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "      "

    .line 1734
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "bitmap size="

    .line 1735
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const/4 p0, 0x0

    .line 1738
    aget-wide v2, p2, p0

    add-long/2addr v2, v0

    aput-wide v2, p2, p0

    :cond_41
    return-void
.end method

.method public static synthetic lambda$dumpCheckin$31([I[I[I[I[JLandroid/content/pm/ShortcutInfo;)V
    .registers 8

    .line 1784
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    aget v0, p0, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, v1

    .line 1785
    :cond_d
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-eqz p0, :cond_19

    aget p0, p1, v1

    add-int/lit8 p0, p0, 0x1

    aput p0, p1, v1

    .line 1786
    :cond_19
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_25

    aget p0, p2, v1

    add-int/lit8 p0, p0, 0x1

    aput p0, p2, v1

    .line 1788
    :cond_25
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 1789
    aget p0, p3, v1

    add-int/lit8 p0, p0, 0x1

    aput p0, p3, v1

    .line 1790
    aget-wide p0, p4, v1

    new-instance p2, Ljava/io/File;

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    add-long/2addr p0, p2

    aput-wide p0, p4, v1

    :cond_43
    return-void
.end method

.method public static synthetic lambda$dumpShortcuts$30(ILjava/io/PrintWriter;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 1767
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_10

    const-string p0, ""

    .line 1768
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$enableWithId$9(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 695
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    const/16 p0, 0x40

    .line 696
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    const/4 p0, 0x0

    .line 697
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    return-void
.end method

.method private synthetic lambda$enforceShortcutCountsBeforeOperation$23(Landroid/util/ArrayMap;ILandroid/content/pm/ShortcutInfo;)V
    .registers 6

    .line 1519
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 1520
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_1e

    .line 1521
    :cond_f
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 1522
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static synthetic lambda$ensureShortcutCountBeforePush$4(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    .line 511
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$findAll$13(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;ZLandroid/content/pm/ShortcutInfo;)V
    .registers 8

    .line 862
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/ShortcutPackage;->filter(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;ZLandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic lambda$forEachShortcut$37(Ljava/util/function/Consumer;Landroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 2

    .line 2450
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2451
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$getShortcutByIdsAsync$42(Ljava/util/Set;Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchSession;)V
    .registers 6

    .line 2554
    new-instance v0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {v0, p1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/ShortcutPackage$1;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/function/Consumer;)V

    .line 2554
    invoke-virtual {p3, p1, v0, v1}, Landroid/app/appsearch/AppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void
.end method

.method private synthetic lambda$getShortcutByIdsAsync$43(Ljava/util/Set;Ljava/util/function/Consumer;)V
    .registers 5

    .line 2553
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private synthetic lambda$getTopShortcutsFromPersistence$48(Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 2674
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2675
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result p0

    .line 2674
    invoke-static {p0, p1}, Landroid/content/pm/ShortcutInfo;->createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTopShortcutsFromPersistence$49(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V
    .registers 4

    .line 2668
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2669
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    .line 2672
    :cond_13
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda22;-><init>()V

    .line 2673
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 2674
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2676
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2672
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$getTopShortcutsFromPersistence$50(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;)V
    .registers 5

    .line 2666
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getSearchSpec()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p2, v1, v0}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object p2

    .line 2667
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$getTopShortcutsFromPersistence$51(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static synthetic lambda$getUsedBitmapFilesLocked$14(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    .line 1026
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1027
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public static synthetic lambda$hasNoShortcut$32([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1811
    aput-boolean v0, p0, p1

    .line 1812
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$hasNonManifestShortcuts$28([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 3

    .line 1682
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1683
    aput-boolean v0, p0, p1

    .line 1684
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 1686
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$new$19(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 3

    .line 1397
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, -0x1

    return p0

    .line 1400
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    return p0

    .line 1403
    :cond_1c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$20(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 6

    .line 1419
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 1422
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    .line 1425
    :cond_1c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1426
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 1428
    :cond_35
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_3c

    return v1

    .line 1431
    :cond_3c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_43

    return v2

    .line 1434
    :cond_43
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_87

    const/high16 v0, 0x20000000

    .line 1436
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1437
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_5e

    return v1

    .line 1439
    :cond_5e
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 1440
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    return v2

    :cond_6b
    const/high16 v0, 0x40000000    # 2.0f

    .line 1444
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1445
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_7a

    return v1

    .line 1447
    :cond_7a
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_87

    .line 1448
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_87

    return v2

    .line 1452
    :cond_87
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_8e

    return v1

    .line 1455
    :cond_8e
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_95

    return v2

    .line 1458
    :cond_95
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$25(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4

    .line 1602
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 1611
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eq v0, v1, :cond_23

    .line 1612
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, -0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x1

    :goto_22
    return p0

    .line 1616
    :cond_23
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_32

    return v0

    .line 1623
    :cond_32
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onRestored$0(ILandroid/content/pm/ShortcutInfo;)V
    .registers 4

    const/16 v0, 0x1000

    if-nez p0, :cond_11

    .line 257
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 258
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v1

    if-ne v1, p0, :cond_11

    return-void

    .line 261
    :cond_11
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 263
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    if-eqz p0, :cond_1e

    const/16 p0, 0x40

    .line 265
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_1e
    return-void
.end method

.method public static synthetic lambda$publishManifestShortcuts$18(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    .line 1271
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1272
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static synthetic lambda$pushDynamicShortcut$1(Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    .line 496
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_20

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report usage via AppSearch. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortcutService"

    .line 497
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method private synthetic lambda$pushDynamicShortcut$2(Landroid/content/pm/ShortcutInfo;Landroid/app/appsearch/AppSearchSession;)V
    .registers 5

    .line 494
    new-instance v0, Landroid/app/appsearch/ReportUsageRequest$Builder;

    .line 495
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/app/appsearch/ReportUsageRequest$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/ReportUsageRequest$Builder;->build()Landroid/app/appsearch/ReportUsageRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda39;-><init>()V

    .line 494
    invoke-virtual {p2, p1, p0, v0}, Landroid/app/appsearch/AppSearchSession;->reportUsage(Landroid/app/appsearch/ReportUsageRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$pushDynamicShortcut$3(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 493
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private synthetic lambda$refreshPinnedFlags$10(Ljava/util/Set;Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 4

    .line 726
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result p0

    .line 725
    invoke-virtual {p2, v0, p0}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 727
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-nez p2, :cond_15

    goto :goto_18

    .line 730
    :cond_15
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_18
    :goto_18
    return-void
.end method

.method public static synthetic lambda$refreshPinnedFlags$11(Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    .line 736
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    .line 737
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_a
    return-void
.end method

.method public static synthetic lambda$refreshPinnedFlags$12(Ljava/util/Set;Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    .line 742
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    .line 743
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_14
    return-void
.end method

.method public static synthetic lambda$removeAllShortcutsAsync$39(Landroid/app/appsearch/AppSearchResult;)V
    .registers 3

    .line 2540
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove shortcuts from AppSearch. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortcutService"

    .line 2541
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method private synthetic lambda$removeAllShortcutsAsync$40(Landroid/app/appsearch/AppSearchSession;)V
    .registers 5

    .line 2539
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getSearchSpec()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda45;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda45;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2, v0, p0, v1}, Landroid/app/appsearch/AppSearchSession;->remove(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$removeAllShortcutsAsync$41()V
    .registers 3

    .line 2538
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static synthetic lambda$removeOrphans$5(Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    .line 539
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 540
    :cond_7
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$removeShortcutAsync$44(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
    .registers 5

    .line 2586
    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    .line 2587
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutPackage$2;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 2586
    invoke-virtual {p2, p1, v0, v1}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void
.end method

.method private synthetic lambda$removeShortcutAsync$45(Ljava/util/Collection;)V
    .registers 4

    .line 2585
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private synthetic lambda$rescanPackageIfNeeded$16(JLandroid/content/pm/ShortcutInfo;)V
    .registers 6

    .line 1179
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_9

    return-void

    .line 1182
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-lez p0, :cond_16

    return-void

    :cond_16
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 1192
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    const-string p1, "Restoring shortcut: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x40

    .line 1193
    invoke-virtual {p3, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 1194
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    return-void
.end method

.method private synthetic lambda$rescanPackageIfNeeded$17(Lcom/android/server/pm/ShortcutService;Landroid/content/res/Resources;Landroid/content/pm/ShortcutInfo;)V
    .registers 9

    .line 1204
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1205
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_13

    const-string/jumbo p0, "null activity detected."

    .line 1207
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    goto :goto_48

    .line 1209
    :cond_13
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "%s is no longer main activity. Disabling shorcut %s."

    .line 1210
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;ZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_48

    return-void

    .line 1222
    :cond_48
    :goto_48
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result p0

    if-eqz p0, :cond_61

    if-nez p2, :cond_51

    goto :goto_61

    .line 1226
    :cond_51
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result p0

    if-nez p0, :cond_5a

    .line 1227
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 1233
    :cond_5a
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    :cond_61
    :goto_61
    return-void
.end method

.method public static synthetic lambda$resolveResourceStrings$24(Landroid/content/res/Resources;Lcom/android/server/pm/ShortcutService;Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 5

    .line 1581
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1582
    :cond_7
    invoke-virtual {p3, p0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 1583
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1584
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$saveShortcutsAsync$46(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
    .registers 5

    .line 2634
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2637
    :cond_7
    new-instance v0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    .line 2639
    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->toGenericDocuments(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2638
    invoke-virtual {v0, p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments(Ljava/util/Collection;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object p1

    .line 2640
    invoke-virtual {p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutPackage$3;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 2637
    invoke-virtual {p2, p1, v0, v1}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void
.end method

.method private synthetic lambda$saveShortcutsAsync$47(Ljava/util/Collection;)V
    .registers 4

    .line 2633
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static synthetic lambda$setupSchema$38(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/AppSearchResult;)V
    .registers 4

    .line 2495
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2496
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2497
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2496
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    .line 2500
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$sortShortcutsToActivities$21(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .registers 1

    .line 1480
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$sortShortcutsToActivities$22(Landroid/util/ArrayMap;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 1469
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1473
    :cond_7
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1475
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo p1, "null activity detected."

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    return-void

    .line 1479
    :cond_18
    new-instance p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 1481
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$verifyStates$33(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 2

    .line 2318
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$verifyStates$34(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    .line 2322
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$verifyStates$35(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    .line 2325
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$verifyStates$36([ZLcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V
    .registers 14

    .line 2333
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    const-string v1, ": shortcut "

    const-string v2, "Package "

    const-string v3, "ShortcutService.verify"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_47

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_47

    .line 2334
    aput-boolean v4, p1, v5

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not manifest, dynamic or pinned."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_47
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2339
    aput-boolean v4, p1, v5

    .line 2340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is both dynamic and manifest at the same time."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :cond_7a
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_ad

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 2344
    aput-boolean v4, p1, v5

    .line 2345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has null activity, but not floating."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_ad
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_e6

    :cond_b9
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 2349
    aput-boolean v4, p1, v5

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not floating, but is disabled."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_e6
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_120

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    if-eqz v0, :cond_120

    .line 2354
    aput-boolean v4, p1, v5

    .line 2355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is floating, but has rank="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2356
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2355
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_120
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_14d

    .line 2359
    aput-boolean v4, p1, v5

    .line 2360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " still has an icon"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_14d
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v0

    if-eqz v0, :cond_186

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_186

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-nez v0, :cond_186

    .line 2364
    aput-boolean v4, p1, v5

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has adaptive bitmap but was not saved to a file nor has icon uri."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_186
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-eqz v0, :cond_1b9

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 2369
    aput-boolean v4, p1, v5

    .line 2370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has both resource and bitmap icons"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_1b9
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-eqz v0, :cond_1ec

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 2374
    aput-boolean v4, p1, v5

    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has both url and bitmap icons"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_1ec
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_21f

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 2379
    aput-boolean v4, p1, v5

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has both url and resource icons"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :cond_21f
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    .line 2384
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v6

    if-nez v6, :cond_22b

    move v6, v4

    goto :goto_22c

    :cond_22b
    move v6, v5

    :goto_22c
    if-eq v0, v6, :cond_268

    .line 2385
    aput-boolean v4, p1, v5

    .line 2386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isEnabled() and getDisabledReason() disagree: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " vs "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2386
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_268
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v0

    const/16 v6, 0x64

    if-ne v0, v6, :cond_2a5

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_2a5

    .line 2393
    aput-boolean v4, p1, v5

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " RESTORED_VERSION_LOWER with no backup source version code."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_2a5
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2d6

    .line 2398
    aput-boolean v4, p1, v5

    .line 2399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has a dummy target activity"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d6
    return-void
.end method

.method public static loadFromFile(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 11

    .line 1986
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    .line 1989
    :try_start_6
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_a} :catch_5f

    .line 1999
    :try_start_a
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    move-object v3, p2

    .line 2002
    :goto_f
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_36

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1a

    goto :goto_f

    .line 2006
    :cond_1a
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 2008
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-ne v4, v5, :cond_32

    const-string/jumbo v5, "package"

    .line 2012
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2013
    invoke-static {p0, p1, v2, p3}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Landroid/util/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    goto :goto_f

    .line 2016
    :cond_32
    invoke-static {v4, v6}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    :try_end_35
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_35} :catch_3c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_35} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_35} :catch_3c
    .catchall {:try_start_a .. :try_end_35} :catchall_3a

    goto :goto_f

    .line 2023
    :cond_36
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :catchall_3a
    move-exception p0

    goto :goto_5b

    :catch_3c
    move-exception p0

    :try_start_3d
    const-string p1, "ShortcutService"

    .line 2020
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read file "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_3a

    .line 2023
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p2

    :goto_5b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2024
    throw p0

    :catch_5f
    return-object p2
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Landroid/util/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo p0, "name"

    .line 2031
    invoke-static {p2, p0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2034
    new-instance v0, Lcom/android/server/pm/ShortcutPackage;

    .line 2035
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 2036
    iget-object v1, v0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    const-string/jumbo v2, "schema-version"

    const/4 v3, 0x0

    .line 2037
    invoke-static {p2, v2, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v4, :cond_21

    move v2, v5

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    iput-boolean v2, v0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    const-string v2, "call-count"

    .line 2040
    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const-string/jumbo v2, "last-reset"

    .line 2041
    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 2043
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 2045
    :goto_39
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_c6

    if-ne v6, v4, :cond_47

    .line 2046
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_c6

    :cond_47
    const/4 v7, 0x2

    if-eq v6, v7, :cond_4b

    goto :goto_39

    .line 2050
    :cond_4b
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 2051
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    if-ne v6, v9, :cond_c1

    const/4 v9, -0x1

    .line 2053
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x72a5f22b

    if-eq v10, v11, :cond_82

    const v11, -0x642f3cc1

    if-eq v10, v11, :cond_77

    const v11, -0x146a23ba

    if-eq v10, v11, :cond_6c

    goto :goto_8c

    :cond_6c
    const-string/jumbo v10, "shortcut"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8c

    move v9, v5

    goto :goto_8c

    :cond_77
    const-string/jumbo v10, "share-target"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8c

    move v9, v7

    goto :goto_8c

    :cond_82
    const-string/jumbo v10, "package-info"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8c

    move v9, v3

    :cond_8c
    :goto_8c
    if-eqz v9, :cond_b8

    if-eq v9, v5, :cond_9d

    if-eq v9, v7, :cond_93

    goto :goto_c1

    .line 2070
    :cond_93
    iget-object v6, v0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/server/pm/ShareTargetInfo;->loadFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_13 .. :try_end_9c} :catchall_c8

    goto :goto_39

    .line 2061
    :cond_9d
    :try_start_9d
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v6

    .line 2060
    invoke-static {p2, p0, v6, p3}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Landroid/util/TypedXmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    .line 2063
    iget-object v7, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ae} :catch_af
    .catchall {:try_start_9d .. :try_end_ae} :catchall_c8

    goto :goto_39

    :catch_af
    move-exception v6

    :try_start_b0
    const-string v7, "ShortcutService"

    const-string v8, "Failed parsing shortcut."

    .line 2066
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 2055
    :cond_b8
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Landroid/util/TypedXmlPullParser;Z)V

    goto/16 :goto_39

    .line 2074
    :cond_c1
    :goto_c1
    invoke-static {v6, v8}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto/16 :goto_39

    .line 2076
    :cond_c6
    monitor-exit v1

    return-object v0

    :catchall_c8
    move-exception p0

    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_b0 .. :try_end_ca} :catchall_c8

    throw p0
.end method

.method public static parseIntent(Landroid/util/TypedXmlPullParser;)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "intent-base"

    .line 2229
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2232
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 2234
    :goto_b
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    .line 2235
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3f

    :cond_1b
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    goto :goto_b

    .line 2239
    :cond_1f
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 2240
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2245
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "extras"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2248
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 2247
    invoke-static {v0, v2}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    goto :goto_b

    .line 2251
    :cond_3a
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_3f
    return-object v0
.end method

.method public static parsePerson(Landroid/util/TypedXmlPullParser;)Landroid/app/Person;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "name"

    .line 2258
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uri"

    .line 2259
    invoke-static {p0, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key"

    .line 2260
    invoke-static {p0, v2}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "is-bot"

    .line 2261
    invoke-static {p0, v3}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "is-important"

    .line 2262
    invoke-static {p0, v4}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Z

    move-result p0

    .line 2265
    new-instance v4, Landroid/app/Person$Builder;

    invoke-direct {v4}, Landroid/app/Person$Builder;-><init>()V

    .line 2266
    invoke-virtual {v4, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    .line 2267
    invoke-virtual {v4}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p0

    return-object p0
.end method

.method public static parseShortcut(Landroid/util/TypedXmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2098
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "id"

    .line 2114
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "activity"

    .line 2115
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    const-string/jumbo v3, "title"

    .line 2117
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "titleid"

    .line 2118
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v3, "titlename"

    .line 2119
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v3, "splash-screen-theme-name"

    .line 2120
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v3, "text"

    .line 2122
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v3, "textid"

    .line 2123
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v3, "textname"

    .line 2124
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "dmessage"

    .line 2125
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "dmessageid"

    .line 2126
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v17

    const-string v3, "dmessagename"

    .line 2128
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v3, "disabled-reason"

    .line 2130
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "intent"

    .line 2131
    invoke-static {v0, v4}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "rank"

    move/from16 v19, v14

    move-object/from16 v21, v15

    .line 2132
    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    long-to-int v15, v14

    const-string/jumbo v7, "timestamp"

    .line 2133
    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v23

    const-string v7, "flags"

    move/from16 v22, v15

    .line 2134
    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    long-to-int v7, v14

    const-string/jumbo v9, "icon-res"

    .line 2135
    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    long-to-int v15, v14

    const-string/jumbo v9, "icon-resname"

    .line 2136
    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v9, "bitmap-path"

    .line 2137
    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v9, "icon-uri"

    .line 2138
    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v9, "locus-id"

    .line 2139
    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2141
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v14

    move/from16 v25, v15

    const/16 v26, 0x0

    const/16 v30, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 2143
    :goto_b6
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v15

    move-object/from16 v32, v13

    const/4 v13, 0x1

    if-eq v15, v13, :cond_1d2

    const/4 v13, 0x3

    if-ne v15, v13, :cond_d0

    .line 2144
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v14, :cond_c9

    goto :goto_d0

    :cond_c9
    move/from16 v38, v11

    move-object/from16 v40, v12

    const/4 v11, 0x1

    goto/16 :goto_1d7

    :cond_d0
    :goto_d0
    const/4 v13, 0x2

    if-eq v15, v13, :cond_dc

    move/from16 v38, v11

    move-object/from16 v40, v12

    move/from16 v39, v14

    :cond_d9
    :goto_d9
    :pswitch_d9
    const/4 v13, 0x0

    goto/16 :goto_1c2

    .line 2148
    :cond_dc
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v15

    .line 2149
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2154
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    const/16 v37, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v38

    move/from16 v39, v14

    const-string v14, "categories"

    move-object/from16 v40, v12

    const-string/jumbo v12, "string-array"

    const/16 v41, 0x0

    sparse-switch v38, :sswitch_data_244

    :goto_fb
    move/from16 v38, v11

    goto/16 :goto_15f

    :sswitch_ff
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_106

    goto :goto_fb

    :cond_106
    const/16 v36, 0x6

    move/from16 v38, v11

    move/from16 v37, v36

    goto :goto_15f

    :sswitch_10d
    move/from16 v38, v11

    const-string/jumbo v11, "map"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_119

    goto :goto_15f

    :cond_119
    const/4 v11, 0x5

    goto :goto_128

    :sswitch_11b
    move/from16 v38, v11

    const-string/jumbo v11, "person"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_127

    goto :goto_15f

    :cond_127
    const/4 v11, 0x4

    :goto_128
    move/from16 v37, v11

    goto :goto_15f

    :sswitch_12b
    move/from16 v38, v11

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_134

    goto :goto_15f

    :cond_134
    const/16 v37, 0x3

    goto :goto_15f

    :sswitch_137
    move/from16 v38, v11

    const-string/jumbo v11, "intent-extras"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_143

    goto :goto_15f

    :cond_143
    const/16 v37, 0x2

    goto :goto_15f

    :sswitch_146
    move/from16 v38, v11

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14f

    goto :goto_15f

    :cond_14f
    const/16 v37, 0x1

    goto :goto_15f

    :sswitch_152
    move/from16 v38, v11

    const-string v11, "extras"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15d

    goto :goto_15f

    :cond_15d
    move/from16 v37, v41

    :goto_15f
    const-string/jumbo v11, "name"

    packed-switch v37, :pswitch_data_262

    .line 2189
    invoke-static {v15, v13}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2182
    :pswitch_16a
    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "capability"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d9

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    .line 2185
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v34, v11

    check-cast v34, Ljava/util/Map;

    goto :goto_1c2

    .line 2168
    :pswitch_182
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parsePerson(Landroid/util/TypedXmlPullParser;)Landroid/app/Person;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    .line 2171
    :pswitch_18b
    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d9

    .line 2174
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v11

    const/4 v13, 0x0

    .line 2173
    invoke-static {v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2175
    new-instance v12, Landroid/util/ArraySet;

    array-length v14, v11

    invoke-direct {v12, v14}, Landroid/util/ArraySet;-><init>(I)V

    move/from16 v14, v41

    .line 2176
    :goto_1a6
    array-length v15, v11

    if-ge v14, v15, :cond_1b1

    .line 2177
    aget-object v15, v11, v14

    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1a6

    :cond_1b1
    move-object/from16 v26, v12

    goto :goto_1c2

    :pswitch_1b4
    const/4 v13, 0x0

    .line 2156
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v35

    goto :goto_1c2

    :pswitch_1ba
    const/4 v13, 0x0

    .line 2159
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Landroid/util/TypedXmlPullParser;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c2
    move-object/from16 v13, v32

    move/from16 v11, v38

    move/from16 v14, v39

    move-object/from16 v12, v40

    goto/16 :goto_b6

    :pswitch_1cc
    const/4 v13, 0x0

    .line 2162
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v30

    goto :goto_1c2

    :cond_1d2
    move/from16 v38, v11

    move-object/from16 v40, v12

    move v11, v13

    :goto_1d7
    const/4 v13, 0x0

    if-eqz v5, :cond_1e5

    move-object/from16 v15, v35

    .line 2194
    invoke-static {v5, v15}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 2195
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2196
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e5
    if-nez v3, :cond_1ec

    and-int/lit8 v0, v7, 0x40

    if-eqz v0, :cond_1ec

    move v3, v11

    :cond_1ec
    if-eqz p3, :cond_1f1

    or-int/lit16 v0, v7, 0x1000

    goto :goto_1f2

    :cond_1f1
    move v0, v7

    :goto_1f2
    if-nez v9, :cond_1f7

    move-object/from16 v35, v13

    goto :goto_1fe

    .line 2212
    :cond_1f7
    new-instance v4, Landroid/content/LocusId;

    invoke-direct {v4, v9}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    move-object/from16 v35, v4

    .line 2214
    :goto_1fe
    new-instance v36, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v4, v36

    const/4 v9, 0x0

    .line 2219
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/Intent;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, [Landroid/content/Intent;

    .line 2222
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Person;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, [Landroid/app/Person;

    move/from16 v5, p2

    move-object/from16 v7, p1

    move/from16 v11, v38

    move-object/from16 v12, v40

    move-object/from16 v13, v32

    move/from16 v14, v19

    move/from16 v1, v22

    move/from16 v2, v25

    move-object/from16 v15, v21

    move-object/from16 v19, v26

    move/from16 v21, v1

    move-object/from16 v22, v30

    move/from16 v25, v0

    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v32, v35

    invoke-direct/range {v4 .. v34}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    return-object v36

    nop

    :sswitch_data_244
    .sparse-switch
        -0x4cd5119d -> :sswitch_152
        -0x468ec964 -> :sswitch_146
        -0x3e3f454c -> :sswitch_137
        -0x3d122a63 -> :sswitch_12b
        -0x3b1c64ab -> :sswitch_11b
        0x1a55c -> :sswitch_10d
        0x4d47461c -> :sswitch_ff
    .end sparse-switch

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_1cc
        :pswitch_1ba
        :pswitch_1b4
        :pswitch_18b
        :pswitch_182
        :pswitch_16a
        :pswitch_d9
    .end packed-switch
.end method


# virtual methods
.method public addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z
    .registers 7

    .line 394
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 399
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 403
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 406
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v3

    const v4, 0x60004002

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 410
    :cond_26
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 411
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 412
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 413
    :try_start_35
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    monitor-exit v3

    goto :goto_46

    :catchall_40
    move-exception p0

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_40

    throw p0

    .line 417
    :cond_43
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    :cond_46
    :goto_46
    if-eqz v1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    return v0
.end method

.method public adjustRanks()V
    .registers 14

    .line 1630
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1631
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 1634
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda9;-><init>(J)V

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 1646
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1647
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    if-ltz v4, :cond_76

    .line 1648
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1651
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1655
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_2d
    if-ge v7, v6, :cond_73

    .line 1657
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1658
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v10

    if-eqz v10, :cond_3c

    goto :goto_70

    .line 1663
    :cond_3c
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v10

    if-nez v10, :cond_5b

    .line 1664
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Non-dynamic shortcut found. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    goto :goto_70

    :cond_5b
    add-int/lit8 v10, v8, 0x1

    .line 1668
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v11

    if-eq v11, v8, :cond_6f

    .line 1669
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;

    invoke-direct {v12, v1, v2, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;-><init>(JI)V

    invoke-virtual {p0, v11, v9, v12}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_6f
    move v8, v10

    :goto_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_73
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    :cond_76
    return-void
.end method

.method public final areAllActivitiesStillEnabled()Z
    .registers 6

    .line 1066
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1070
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 1073
    new-instance v4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[Z)V

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    const/4 p0, 0x0

    aget-boolean p0, v3, p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public canRestoreAnyVersion()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public cleanupDanglingBitmapFiles(Ljava/io/File;)V
    .registers 7

    .line 1034
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1035
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFilesLocked()Landroid/util/ArraySet;

    move-result-object p0

    .line 1038
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2d

    aget-object v3, p1, v2

    .line 1039
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_2a

    .line 1042
    :cond_1d
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1043
    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1047
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1050
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public clearAllImplicitRanks()V
    .registers 2

    .line 1594
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public deleteAllDynamicShortcuts()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 558
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 559
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_15
    if-ltz v3, :cond_38

    .line 560
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 561
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 564
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 565
    invoke-virtual {v7, v4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 566
    invoke-virtual {v7, v5}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    move v6, v4

    :cond_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 569
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_45

    .line 570
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeAllShortcutsAsync()V

    if-eqz v6, :cond_43

    .line 572
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_43
    const/4 p0, 0x0

    return-object p0

    :catchall_45
    move-exception p0

    .line 569
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v6, p3

    .line 586
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public deleteLongLivedWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;
    .registers 12

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 613
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_f
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    .line 615
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public final deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-ne p2, v2, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    move v2, v0

    .line 653
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable and disabledReason disagree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 656
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_69

    .line 658
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3e

    if-eqz p4, :cond_3e

    .line 659
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p4

    if-nez p4, :cond_3e

    goto :goto_69

    :cond_3e
    if-nez p3, :cond_43

    .line 663
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    :cond_43
    if-nez p6, :cond_4c

    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, v0

    .line 666
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutPackage;->removeShortcutAsync([Ljava/lang/String;)V

    .line 668
    :cond_4c
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p3

    if-nez p3, :cond_5d

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p3

    if-eqz p3, :cond_59

    goto :goto_5d

    .line 688
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    return-object v2

    .line 669
    :cond_5d
    :goto_5d
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda49;

    invoke-direct {p3, p0, p2, p5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/pm/ShortcutPackage;ZI)V

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_69
    :goto_69
    return-object v3
.end method

.method public final disableDynamicWithId(Ljava/lang/String;ZIZ)Landroid/content/pm/ShortcutInfo;
    .registers 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 600
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)Landroid/content/pm/ShortcutInfo;
    .registers 14

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    .line 630
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p4

    .line 635
    new-instance p5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;

    invoke-direct {p5, p0, p2, p3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/String;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    return-object p4
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 7

    .line 1692
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1694
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Package: "

    .line 1695
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "  UID: "

    .line 1697
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1698
    iget p3, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1699
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1701
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "  "

    .line 1702
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Calls: "

    .line 1703
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1704
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1705
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1708
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    .line 1709
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last known FG: "

    .line 1710
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1711
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1712
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1715
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    .line 1716
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last reset: ["

    .line 1717
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1718
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "] "

    .line 1719
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1720
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1724
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1726
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Shortcuts:"

    .line 1727
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 1729
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[J)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1741
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  "

    .line 1742
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Total bitmap size: "

    .line 1743
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-wide v1, v0, p3

    .line 1744
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, " ("

    .line 1745
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p2, p2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object p2, p2, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    aget-wide v0, v0, p3

    invoke-static {p2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ")"

    .line 1747
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1750
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1751
    :try_start_ce
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    const-string p3, "  "

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutBitmapSaver;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1752
    monitor-exit p2

    return-void

    :catchall_d7
    move-exception p0

    monitor-exit p2
    :try_end_d9
    .catchall {:try_start_ce .. :try_end_d9} :catchall_d7

    throw p0
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1775
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    new-array v7, v0, [I

    new-array v8, v0, [I

    new-array v9, v0, [I

    new-array v10, v0, [I

    new-array v0, v0, [J

    .line 1783
    new-instance v11, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda21;

    move-object v1, v11

    move-object v2, v7

    move-object v3, v9

    move-object v4, v8

    move-object v5, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda21;-><init>([I[I[I[I[J)V

    invoke-virtual {p0, v11}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget v1, v7, p0

    const-string v2, "dynamic"

    .line 1794
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v1, v9, p0

    const-string/jumbo v2, "manifest"

    .line 1795
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v1, v8, p0

    const-string/jumbo v2, "pinned"

    .line 1796
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v1, v10, p0

    const-string v2, "bitmaps"

    .line 1797
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget-wide v0, v0, p0

    const-string p0, "bitmapBytes"

    .line 1798
    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p1
.end method

.method public dumpShortcuts(Ljava/io/PrintWriter;I)V
    .registers 8

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_16

    move v4, v1

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    if-eqz v3, :cond_21

    const/4 p2, 0x2

    goto :goto_22

    :cond_21
    move p2, v2

    :goto_22
    or-int/2addr p2, v0

    if-eqz v4, :cond_28

    const/16 v0, 0x20

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    or-int/2addr p2, v0

    if-eqz v1, :cond_2f

    const v2, 0x60004000

    :cond_2f
    or-int/2addr p2, v2

    .line 1766
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public enableWithId(Ljava/lang/String;)V
    .registers 4

    .line 694
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda56;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1512
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1517
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1518
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/util/ArrayMap;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1526
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_18
    if-ltz v2, :cond_5f

    .line 1527
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1528
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x2

    if-nez v5, :cond_2f

    if-eq p2, v6, :cond_5c

    const-string v4, "Activity must not be null at this point"

    .line 1531
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    goto :goto_5c

    .line 1537
    :cond_2f
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_40

    if-ne p2, v6, :cond_3c

    goto :goto_5c

    .line 1544
    :cond_3c
    invoke-virtual {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_5c

    .line 1547
    :cond_40
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_49

    if-ne p2, v6, :cond_49

    goto :goto_5c

    :cond_49
    if-eqz p2, :cond_59

    .line 1556
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    .line 1557
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v4

    if-nez v4, :cond_59

    const/4 v4, -0x1

    .line 1558
    invoke-virtual {p0, v1, v6, v4}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1561
    :cond_59
    invoke-virtual {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1565
    :cond_5f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    sub-int/2addr p0, v3

    :goto_64
    if-ltz p0, :cond_76

    .line 1566
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_64

    :cond_76
    return-void
.end method

.method public ensureAllShortcutsVisibleToLauncher(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 344
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    const/4 v0, 0x1

    .line 345
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_4

    .line 346
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shortcut ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is hidden from launcher and may not be manipulated via APIs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 316
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 317
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 310
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_6
    if-ltz p0, :cond_53

    .line 323
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 324
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_31

    .line 327
    :cond_15
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 328
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v3, v0, :cond_29

    .line 329
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_29

    goto :goto_31

    :cond_29
    if-nez v2, :cond_34

    .line 332
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v2

    if-nez v2, :cond_34

    :goto_31
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    .line 337
    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid icon type in shortcut "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Bitmaps are not allowed in long-lived shortcuts. Use Resource icons, or Uri-based icons instead."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-void
.end method

.method public final ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 4

    if-eqz p1, :cond_31

    .line 295
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result p0

    if-eqz p0, :cond_31

    if-eqz p2, :cond_11

    .line 296
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_31

    .line 297
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manifest shortcut ID="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " may not be manipulated via APIs"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    :goto_31
    return-void
.end method

.method public ensureNotImmutable(Ljava/lang/String;Z)V
    .registers 3

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    return-void
.end method

.method public final ensureShortcutCountBeforePush()V
    .registers 6

    .line 506
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 508
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxAppShortcuts()I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda50;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda50;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 511
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 512
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_7a

    .line 515
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeRankAndTimeComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 517
    :goto_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_7a

    .line 518
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 519
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v4

    if-nez v4, :cond_53

    .line 525
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    goto :goto_33

    .line 521
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has published "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " manifest shortcuts across different activities."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_7a
    monitor-exit v1

    return-void

    :catchall_7c
    move-exception p0

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_b .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public final filter(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;ZLandroid/content/pm/ShortcutInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/content/pm/ShortcutInfo;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_11

    if-eqz p5, :cond_f

    .line 875
    invoke-virtual {p7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    if-nez p6, :cond_23

    .line 878
    invoke-virtual {p7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result p4

    if-eqz p4, :cond_23

    invoke-virtual {p7}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p4

    if-nez p4, :cond_23

    if-nez p0, :cond_23

    return-void

    .line 884
    :cond_23
    invoke-virtual {p7, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object p3

    const/4 p4, 0x2

    if-nez p6, :cond_2f

    if-nez p0, :cond_2f

    .line 891
    invoke-virtual {p3, p4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_2f
    if-eqz p2, :cond_37

    .line 894
    invoke-interface {p2, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3f

    :cond_37
    if-nez p0, :cond_3c

    .line 896
    invoke-virtual {p3, p4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 898
    :cond_3c
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-void
.end method

.method public findAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2442
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2443
    :try_start_3
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;-><init>()V

    .line 2444
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    .line 2445
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 839
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 856
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    if-nez p4, :cond_13

    const/4 p5, 0x0

    goto :goto_27

    .line 860
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {v0, p4, v1, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p5

    .line 861
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p5, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object p5

    :goto_27
    move-object v6, p5

    .line 862
    new-instance p5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;Z)V

    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 281
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final forEachShortcut(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2449
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda58;

    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda58;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    return-void
.end method

.method public final forEachShortcutMutate(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2457
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 2458
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final forEachShortcutStopWhen(Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2464
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2465
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_26

    .line 2466
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 2467
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2468
    monitor-exit v0

    return-void

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2471
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    if-eqz p1, :cond_16

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    const p0, 0x60004023

    .line 361
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 364
    :cond_16
    monitor-exit v0

    return-object p1

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 375
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 378
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    .line 379
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->ensureShortcutCountBeforePush()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/ShortcutInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut([Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public final fromAppSearch()Lcom/android/internal/infra/AndroidFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;"
        }
    .end annotation

    .line 2683
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2684
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    .line 2685
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 2688
    :try_start_12
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 2689
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 2690
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 2691
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 2688
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2692
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutUser;->getAppSearch(Landroid/app/appsearch/AppSearchManager$SearchContext;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 2693
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2f} :catch_49
    .catchall {:try_start_12 .. :try_end_2f} :catchall_47

    .line 2694
    :try_start_2f
    iget-boolean v3, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    if-nez v3, :cond_3c

    .line 2695
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda47;

    invoke-direct {v3, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    :cond_3c
    const/4 v3, 0x1

    .line 2697
    iput-boolean v3, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    .line 2698
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_44

    .line 2704
    :goto_40
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_7c

    :catchall_44
    move-exception v3

    .line 2698
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v3
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_49
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    goto :goto_83

    :catch_49
    move-exception v1

    :try_start_4a
    const-string v3, "ShortcutService"

    .line 2700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create app search session. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2701
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2700
    invoke-static {v3, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2702
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v2

    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v2, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_7b
    .catchall {:try_start_4a .. :try_end_7b} :catchall_47

    goto :goto_40

    .line 2706
    :goto_7c
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v2

    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    return-object v2

    .line 2704
    :goto_83
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2705
    throw p0
.end method

.method public getAllShareTargetsForTest()Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation

    .line 2279
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2280
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 2281
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getAllShortcutsForTest()Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2272
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2273
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda46;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda46;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getApiCallCount(Z)I
    .registers 9

    .line 760
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 766
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 768
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1a

    if-eqz p1, :cond_23

    .line 770
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 771
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 778
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v1

    .line 780
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v3

    .line 781
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    iget-wide v5, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_44

    const-string p1, "ShortcutService"

    const-string v1, "Clock rewound"

    .line 782
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iput-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 785
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v0

    .line 790
    :cond_44
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long p1, v3, v1

    if-gez p1, :cond_4e

    .line 795
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 796
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 798
    :cond_4e
    iget p0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return p0
.end method

.method public getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 912
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 914
    :goto_a
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 915
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShareTargetInfo;

    .line 916
    iget-object v5, v4, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v6, v5

    move v7, v2

    :goto_1e
    if-ge v7, v6, :cond_31

    aget-object v8, v5, v7

    .line 917
    iget-object v8, v8, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 919
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 925
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 926
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    .line 930
    :cond_41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 933
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda27;

    invoke-direct {v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda27;-><init>()V

    const/16 v6, 0x9

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 935
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 933
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 938
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 939
    :goto_64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c0

    .line 940
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_bd

    .line 941
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7d

    goto :goto_bd

    :cond_7d
    move v6, v2

    .line 944
    :goto_7e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_bd

    .line 947
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShareTargetInfo;

    move v8, v2

    .line 948
    :goto_8b
    iget-object v9, v7, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v10, v9

    if-ge v8, v10, :cond_9d

    .line 949
    aget-object v9, v9, v8

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9a

    move v8, v2

    goto :goto_9e

    :cond_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    :cond_9d
    const/4 v8, 0x1

    :goto_9e
    if-eqz v8, :cond_ba

    .line 955
    new-instance v5, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    new-instance v8, Landroid/content/ComponentName;

    .line 956
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6, v8}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 955
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_ba
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    :cond_bd
    :goto_bd
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 961
    :cond_c0
    monitor-exit v0

    return-object v3

    :catchall_c2
    move-exception p0

    .line 962
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_3 .. :try_end_c4} :catchall_c2

    throw p0
.end method

.method public getOwnerUserId()I
    .registers 1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result p0

    return p0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 228
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result p0

    .line 227
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getPackageUid()I
    .registers 1

    .line 222
    iget p0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return p0
.end method

.method public final getSearchSpec()Landroid/app/appsearch/SearchSpec;
    .registers 6

    .line 2507
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v1, "Shortcut"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 2508
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 2509
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterNamespaces([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 2510
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setTermMatch(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/appsearch/SearchSpec$Builder;->setResultCountPerPage(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    .line 2512
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object p0

    return-object p0
.end method

.method public getSharingShortcutCount()I
    .registers 12

    .line 977
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 979
    monitor-exit v0

    return v2

    .line 983
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 984
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda27;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda27;-><init>()V

    const/16 v4, 0x1b

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    move v3, v2

    move v4, v3

    .line 988
    :goto_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_68

    .line 989
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_65

    .line 990
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_38

    goto :goto_65

    :cond_38
    move v6, v2

    .line 993
    :goto_39
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_65

    .line 996
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShareTargetInfo;

    move v8, v2

    .line 997
    :goto_4a
    iget-object v9, v7, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v10, v9

    if-ge v8, v10, :cond_5c

    .line 998
    aget-object v9, v9, v8

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_59

    move v7, v2

    goto :goto_5d

    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    :cond_5c
    const/4 v7, 0x1

    :goto_5d
    if-eqz v7, :cond_62

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1009
    :cond_68
    monitor-exit v0

    return v4

    :catchall_6a
    move-exception p0

    .line 1010
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public getShortcutByIdsAsync(Ljava/util/Set;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 2549
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2550
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 2553
    :cond_e
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getShortcutCount()I
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 238
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getShortcutPackageItemFile()Ljava/io/File;
    .registers 4

    .line 2720
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2721
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    .line 2720
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "packages"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2723
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getTopShortcutsFromPersistence(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 2662
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 2663
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 2665
    :cond_a
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getUsedBitmapFilesLocked()Landroid/util/ArraySet;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1024
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1025
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final hasNoShortcut()Z
    .registers 5

    .line 1806
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getShortcutCount()I

    move-result p0

    if-nez p0, :cond_f

    move v1, v2

    :cond_f
    return v1

    :cond_10
    new-array v0, v2, [Z

    .line 1810
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda12;-><init>([Z)V

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    aget-boolean p0, v0, v1

    xor-int/2addr p0, v2

    return p0
.end method

.method public hasNonManifestShortcuts()Z
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 1681
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;-><init>([Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    const/4 p0, 0x0

    aget-boolean p0, v0, p0

    return p0
.end method

.method public hasShareTargets()Z
    .registers 2

    .line 966
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 968
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    .line 1489
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    .line 1491
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1494
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final isAppSearchEnabled()Z
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isAppSearchEnabled()Z

    move-result p0

    return p0
.end method

.method public isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z
    .registers 2

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 286
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z
    .registers 2

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 291
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public mergeNonManifestShortcuts(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 6

    .line 2286
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_4b

    .line 2287
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    if-eqz v1, :cond_48

    .line 2288
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-nez v2, :cond_48

    .line 2289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shortcuts for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - dynamic shortcut are being kept."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_4b
    return-void
.end method

.method public mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2411
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_e

    .line 2415
    :try_start_b
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2417
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-nez p1, :cond_16

    .line 2419
    monitor-exit v0

    return-void

    .line 2421
    :cond_16
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/content/pm/ShortcutInfo;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 2422
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut([Landroid/content/pm/ShortcutInfo;)V

    .line 2423
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw p0
.end method

.method public onRestored(I)V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x1000

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "disabledReason"

    aput-object v2, v0, v1

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s:-%s AND %s:%s"

    .line 252
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda57;

    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda57;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method public final publishManifestShortcuts(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1269
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1270
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_79

    .line 1278
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    move v5, v4

    :goto_17
    if-ge v4, v3, :cond_78

    .line 1283
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1284
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v6

    xor-int/2addr v6, v1

    .line 1286
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 1287
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    if-eqz v8, :cond_60

    .line 1292
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v9

    if-nez v9, :cond_54

    .line 1293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shortcut with ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " exists but is not from AndroidManifest.xml, not updating."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ShortcutService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 1298
    :cond_54
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-eqz v8, :cond_60

    const/4 v8, 0x2

    .line 1300
    invoke-virtual {v5, v8}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    move v8, v1

    goto :goto_61

    :cond_60
    move v8, v2

    :goto_61
    if-eqz v6, :cond_66

    if-nez v8, :cond_66

    goto :goto_74

    .line 1312
    :cond_66
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    if-nez v6, :cond_74

    .line 1314
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_74

    .line 1316
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_74
    :goto_74
    add-int/lit8 v4, v4, 0x1

    move v5, v1

    goto :goto_17

    :cond_78
    move v2, v5

    .line 1322
    :cond_79
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9d

    .line 1328
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_84
    if-ltz p1, :cond_9a

    .line 1331
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v3, p0

    .line 1333
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)Landroid/content/pm/ShortcutInfo;

    add-int/lit8 p1, p1, -0x1

    move v2, v1

    goto :goto_84

    .line 1338
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    .line 1341
    :cond_9d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    return v2
.end method

.method public pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 433
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "pushDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 436
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 438
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 439
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 442
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 443
    :cond_22
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 444
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v4

    .line 447
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v5

    .line 448
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_5d

    .line 450
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_5d

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error pushing shortcut. There are already "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shortcuts."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 452
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    :cond_5d
    if-eqz v5, :cond_a1

    .line 455
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_a1

    .line 458
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sub-int/2addr v4, v0

    .line 460
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 461
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v4

    if-eqz v4, :cond_92

    const-string p0, "ShortcutService"

    .line 463
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove manifest shortcut while pushing dynamic shortcut "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 468
    :cond_92
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    if-eqz p2, :cond_a1

    move p2, v0

    goto :goto_a2

    :cond_a1
    move p2, v2

    :goto_a2
    if-eqz v1, :cond_b2

    .line 476
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 479
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v1

    const v2, 0x60004002

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 483
    :cond_b2
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 484
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 485
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_c1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    monitor-exit v0

    goto :goto_d2

    :catchall_cc
    move-exception p0

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_c1 .. :try_end_ce} :catchall_cc

    throw p0

    .line 490
    :cond_cf
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 492
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 493
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    :cond_e0
    return p2
.end method

.method public final pushOutExcessShortcuts()Z
    .registers 10

    .line 1350
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1351
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    .line 1356
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1357
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_12
    if-ltz v3, :cond_4c

    .line 1358
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1359
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v1, :cond_21

    goto :goto_49

    .line 1363
    :cond_21
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1366
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_2b
    if-lt v6, v1, :cond_49

    .line 1367
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1369
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-eqz v8, :cond_3f

    const-string v7, "Found manifest shortcuts in excess list."

    .line 1372
    invoke-virtual {v0, v7}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    goto :goto_46

    .line 1375
    :cond_3f
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4, v4}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    :goto_46
    add-int/lit8 v6, v6, -0x1

    goto :goto_2b

    :cond_49
    :goto_49
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    :cond_4c
    const/4 p0, 0x0

    return p0
.end method

.method public refreshPinnedFlags()V
    .registers 4

    .line 721
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 724
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 733
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 735
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 741
    :cond_1d
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda32;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 747
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda33;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 750
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    return-void
.end method

.method public removeAllShortcutsAsync()V
    .registers 2

    .line 2535
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2538
    :cond_7
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeOrphans()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 538
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda35;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda35;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 542
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 543
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_19
    if-ltz v2, :cond_2b

    .line 544
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_2b
    return-object v0
.end method

.method public final removeShortcutAsync(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2582
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2585
    :cond_7
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final varargs removeShortcutAsync([Ljava/lang/String;)V
    .registers 2

    .line 2577
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2578
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->removeShortcutAsync(Ljava/util/Collection;)V

    return-void
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .registers 13

    .line 1106
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1107
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v1

    const/16 v3, 0xe

    .line 1111
    :try_start_a
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v6

    .line 1111
    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_f2

    const/4 v5, 0x0

    if-nez v4, :cond_21

    .line 1135
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v5

    :cond_21
    if-nez p1, :cond_4d

    if-nez p2, :cond_4d

    .line 1128
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    cmp-long p2, v6, v8

    if-nez p2, :cond_4d

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v6

    iget-wide v8, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long p2, v6, v8

    if-nez p2, :cond_4d

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z

    move-result p2
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_f2

    if-eqz p2, :cond_4d

    .line 1135
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v5

    :cond_4d
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1141
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    .line 1143
    :try_start_54
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1144
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1145
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 1144
    invoke-static {v2, v3, v6, v7}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6b} :catch_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_6b} :catch_6f
    .catchall {:try_start_54 .. :try_end_6b} :catchall_6c

    goto :goto_78

    :catchall_6c
    move-exception p0

    goto/16 :goto_f0

    :catch_6f
    move-exception v2

    :try_start_70
    const-string v3, "ShortcutService"

    const-string v6, "Failed to load shortcuts from AndroidManifest.xml."

    .line 1147
    invoke-static {v3, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 1149
    :goto_78
    monitor-exit p2
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_6c

    if-nez v2, :cond_7d

    move p2, v5

    goto :goto_81

    .line 1151
    :cond_7d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    :goto_81
    if-eqz p1, :cond_86

    if-nez p2, :cond_86

    return v5

    .line 1171
    :cond_86
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 1173
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v5

    .line 1178
    new-instance p2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;

    invoke-direct {p2, p0, v5, v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/pm/ShortcutPackage;J)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    if-nez p1, :cond_ab

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1202
    new-instance p2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda60;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutService;Landroid/content/res/Resources;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 1237
    :cond_ab
    iget-object p1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_e0

    .line 1238
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    move-result p1

    if-eqz p1, :cond_e0

    if-nez v2, :cond_e0

    .line 1240
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoAsUser(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_e0

    const-string p1, "ShortcutService"

    .line 1241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is installed on SD Card but not scanned yet. We don\'t want to republish."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 1245
    :cond_e0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    :goto_e3
    if-eqz v2, :cond_e8

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    .line 1252
    :cond_e8
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1256
    invoke-virtual {v0, p0, v1, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x1

    return p0

    .line 1149
    :goto_f0
    :try_start_f0
    monitor-exit p2
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_6c

    throw p0

    :catchall_f2
    move-exception p0

    .line 1135
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1136
    throw p0
.end method

.method public resetRateLimiting()V
    .registers 2

    .line 823
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez v0, :cond_a

    const/4 v0, 0x0

    .line 824
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 825
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    :cond_a
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .registers 3

    const/4 v0, 0x0

    .line 830
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const-wide/16 v0, 0x0

    .line 831
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    return-void
.end method

.method public resetThrottling()V
    .registers 2

    const/4 v0, 0x0

    .line 903
    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return-void
.end method

.method public resolveResourceStrings()V
    .registers 5

    .line 1574
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1577
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_18

    .line 1580
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;

    invoke-direct {v3, v1, v0, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;-><init>(Landroid/content/res/Resources;Lcom/android/server/pm/ShortcutService;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 1587
    :cond_18
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x0

    .line 1588
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    :cond_22
    return-void
.end method

.method public final runAsSystem(Ljava/lang/Runnable;)V
    .registers 4

    .line 2710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2712
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 2714
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2715
    throw p0
.end method

.method public final saveShortcut(Landroid/util/TypedXmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1858
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    if-eqz p3, :cond_13

    .line 1861
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    return-void

    :cond_13
    const/4 v1, 0x0

    if-eqz p3, :cond_25

    .line 1868
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1870
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->isSmartSwitchBackupAllowed()Z

    move-result v2

    if-nez v2, :cond_25

    if-eqz p4, :cond_23

    goto :goto_25

    :cond_23
    move p4, v1

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p4, 0x1

    .line 1875
    :goto_26
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1876
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_2f
    const/4 v2, 0x0

    const-string/jumbo v3, "shortcut"

    .line 1878
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1879
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "id"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1881
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    const-string v5, "activity"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1883
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1884
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "titleid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1885
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "titlename"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1886
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getStartingThemeResName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "splash-screen-theme-name"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1887
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1888
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "textid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1889
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "textname"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_af

    .line 1891
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "dmessage"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1893
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v4

    int-to-long v4, v4

    const-string v6, "dmessageid"

    .line 1892
    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1895
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dmessagename"

    .line 1894
    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1897
    :cond_af
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v4

    int-to-long v4, v4

    const-string v6, "disabled-reason"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1899
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v4

    const-string/jumbo v6, "timestamp"

    .line 1898
    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1900
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    if-eqz v4, :cond_d7

    .line 1902
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "locus-id"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_d7
    const-string v4, "flags"

    if-eqz p3, :cond_105

    .line 1904
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1905
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutService;->isSmartSwitchBackupAllowed()Z

    move-result v5

    if-nez v5, :cond_105

    .line 1908
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v5

    const v6, -0x8a0e

    and-int/2addr v5, v6

    int-to-long v5, v5

    .line 1913
    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1916
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-nez p0, :cond_140

    const-string p0, "Package version code should be available at this point."

    .line 1918
    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    goto :goto_140

    .line 1924
    :cond_105
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    int-to-long v5, p0

    const-string/jumbo p0, "rank"

    invoke-static {p1, p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1926
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result p0

    int-to-long v5, p0

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1927
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result p0

    int-to-long v4, p0

    const-string/jumbo p0, "icon-res"

    invoke-static {p1, p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1928
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "icon-resname"

    invoke-static {p1, v0, p0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1929
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bitmap-path"

    invoke-static {p1, v0, p0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1930
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "icon-uri"

    invoke-static {p1, v0, p0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_140
    :goto_140
    if-eqz p4, :cond_1fb

    .line 1935
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_169

    .line 1936
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p4

    if-lez p4, :cond_169

    const-string p4, "categories"

    .line 1937
    invoke-interface {p1, v2, p4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1938
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1939
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 1938
    invoke-static {p0, p4, v0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 1940
    invoke-interface {p1, v2, p4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_169
    if-nez p3, :cond_1b9

    .line 1944
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object p0

    .line 1945
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1b9

    move p3, v1

    .line 1946
    :goto_176
    array-length p4, p0

    if-ge p3, p4, :cond_1b9

    .line 1947
    aget-object p4, p0, p3

    const-string/jumbo v0, "person"

    .line 1949
    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1950
    invoke-virtual {p4}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1951
    invoke-virtual {p4}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uri"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1952
    invoke-virtual {p4}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1953
    invoke-virtual {p4}, Landroid/app/Person;->isBot()Z

    move-result v4

    const-string/jumbo v5, "is-bot"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1954
    invoke-virtual {p4}, Landroid/app/Person;->isImportant()Z

    move-result p4

    const-string/jumbo v4, "is-important"

    invoke-static {p1, v4, p4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1955
    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_176

    .line 1959
    :cond_1b9
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object p0

    .line 1960
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object p3

    const-string p4, "extras"

    if-eqz p0, :cond_1e3

    if-eqz p3, :cond_1e3

    .line 1962
    array-length v0, p0

    :goto_1c8
    if-ge v1, v0, :cond_1e3

    const-string/jumbo v4, "intent"

    .line 1964
    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1965
    aget-object v5, p0, v1

    const-string/jumbo v6, "intent-base"

    invoke-static {p1, v6, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1966
    aget-object v5, p3, v1

    invoke-static {p1, p4, v5}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1967
    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c8

    .line 1971
    :cond_1e3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p1, p4, p0}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1974
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCapabilityBindingsInternal()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1fb

    .line 1975
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1fb

    const-string p2, "capability"

    .line 1976
    invoke-static {p0, p2, p1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 1980
    :cond_1fb
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final saveShortcut(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2432
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2434
    :try_start_6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 2435
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 2437
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final varargs saveShortcut([Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    .line 2427
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Ljava/util/Collection;)V

    return-void
.end method

.method public final saveShortcutsAsync(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2623
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 2633
    :cond_10
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1820
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1821
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1822
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1824
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->hasNoShortcut()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v2, :cond_1d

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v3, :cond_1d

    .line 1825
    monitor-exit v0

    return-void

    :cond_1d
    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    .line 1828
    invoke-interface {p1, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    .line 1830
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "call-count"

    .line 1831
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v3, "last-reset"

    .line 1832
    iget-wide v5, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    if-nez p2, :cond_4f

    const-string/jumbo v3, "schema-version"

    .line 1834
    iget-boolean v5, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    if-eqz v5, :cond_4a

    const-wide/16 v5, 0x3

    goto :goto_4c

    :cond_4a
    const-wide/16 v5, 0x0

    :goto_4c
    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1837
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlSerializer;Z)V

    const/4 v3, 0x0

    move v5, v3

    :goto_5c
    if-ge v5, v1, :cond_74

    .line 1840
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1841
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v7

    .line 1840
    invoke-virtual {p0, p1, v6, p2, v7}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Landroid/util/TypedXmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    :cond_74
    if-nez p2, :cond_86

    :goto_76
    if-ge v3, v2, :cond_86

    .line 1846
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/ShareTargetInfo;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShareTargetInfo;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    :cond_86
    const-string/jumbo p0, "package"

    .line 1850
    invoke-interface {p1, v4, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1851
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public scheduleSaveToAppSearchLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2612
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2613
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 2614
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2615
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2617
    :cond_19
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda34;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2618
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    .line 2617
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->saveShortcutsAsync(Ljava/util/Collection;)V

    return-void
.end method

.method public semGetUsedBitmapFiles()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFilesLocked()Landroid/util/ArraySet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 1016
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final setupSchema(Landroid/app/appsearch/AppSearchSession;)Lcom/android/internal/infra/AndroidFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchSession;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;"
        }
    .end annotation

    .line 2481
    new-instance v0, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/app/appsearch/AppSearchSchema;

    sget-object v2, Landroid/content/pm/AppSearchShortcutPerson;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/content/pm/AppSearchShortcutInfo;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2482
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas([Landroid/app/appsearch/AppSearchSchema;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2483
    invoke-virtual {v0, v3}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 2485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "Shortcut"

    .line 2484
    invoke-virtual {v0, v3, v2}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    const/4 v2, 0x6

    .line 2487
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 2486
    invoke-virtual {v0, v3, v4}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2489
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v3, "ShortcutPerson"

    .line 2488
    invoke-virtual {v0, v3, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2491
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 2490
    invoke-virtual {v0, v3, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2492
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 2494
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;)V

    .line 2493
    invoke-virtual {p1, v0, v2, p0, v3}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public final sortShortcutsToActivities()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    .line 1466
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1468
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public tryApiCall(Z)Z
    .registers 3

    .line 809
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result p1

    iget v0, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt p1, v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 814
    :cond_e
    iget p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 815
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return v0
.end method

.method public updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    .line 702
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 703
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    const/4 v0, 0x2

    .line 707
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    return-void
.end method

.method public final verifyRanksSequential(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2518
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 2519
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 2520
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v0, :cond_4f

    .line 2522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": shortcut "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rank="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but expected to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService.verify"

    .line 2522
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_52
    return v1
.end method

.method public verifyStates()V
    .registers 10

    .line 2299
    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 2303
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2306
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2309
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_13
    const/4 v5, 0x0

    if-ltz v4, :cond_95

    .line 2310
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2311
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v8

    if-le v7, v8, :cond_69

    aput-boolean v0, v1, v5

    .line 2313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": activity "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shortcuts."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ShortcutService.verify"

    .line 2313
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_69
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda40;

    invoke-direct {v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda40;-><init>()V

    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2321
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2322
    new-instance v7, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda41;

    invoke-direct {v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda41;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2324
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2325
    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;

    invoke-direct {v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2327
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 2328
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_13

    .line 2332
    :cond_95
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/pm/ShortcutPackage;[ZLcom/android/server/pm/ShortcutService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    aget-boolean p0, v1, v5

    if-nez p0, :cond_a2

    return-void

    .line 2405
    :cond_a2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "See logcat for errors"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
