.class public Lcom/android/server/enterprise/general/MiscPolicy;
.super Lcom/samsung/android/knox/IMiscPolicy$Stub;
.source "MiscPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;,
        Lcom/android/server/enterprise/general/MiscPolicy$Injector;
    }
.end annotation


# static fields
.field public static final CHROME_BOOKMARKS_URI:Landroid/net/Uri;

.field public static final CREDENTIALS_FAILS_COUNT:Ljava/lang/String; = "credentials_fails_count"

.field public static final FONT_NOTSUPPORT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font.droidserifitalic"

.field public static final FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

.field public static final SBROWSER_PROJECTION:[Ljava/lang/String;

.field public static final SBROWSER_PROJECTION_ID_INDEX:I = 0x0

.field public static final SETTINGS_APP_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field public static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field public final ACTION_USER_ADDED:Ljava/lang/String;

.field public final MAX_PORT_NUMBER:I

.field public final MIN_PORT_NUMBER:I

.field public credentialsFailsCount:I

.field public credentialsFailsState:I

.field public mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCon:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mFontSizes:[F

.field public mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

.field public mStartNFCHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/general/MiscPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 5

    const-string v0, "content://com.sec.android.app.sbrowser.browser/bookmarks"

    .line 199
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.partnerbookmarks/bookmarks"

    .line 201
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "title"

    const-string v3, "favicon"

    const-string v4, "editable"

    .line 202
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_PROJECTION:[Ljava/lang/String;

    .line 2012
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 236
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$Injector;)V
    .registers 5

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 183
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v1, 0x0

    .line 186
    iput v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->MIN_PORT_NUMBER:I

    const v2, 0xffff

    .line 187
    iput v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->MAX_PORT_NUMBER:I

    .line 189
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    const-string v0, "android.intent.action.USER_ADDED"

    .line 193
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->ACTION_USER_ADDED:Ljava/lang/String;

    .line 214
    iput v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    .line 215
    iput v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 241
    iget-object v0, p1, Lcom/android/server/enterprise/general/MiscPolicy$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {p1}, Lcom/android/server/enterprise/general/MiscPolicy$Injector;->getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 243
    new-instance p1, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 244
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/LocalProxyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->initializeGlobalProxyCache()V

    return-void
.end method

.method public static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2

    const-string v0, " OR url = "

    .line 747
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 999
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1000
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1001
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const-string/jumbo v0, "http://"

    .line 762
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "https://"

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    const/4 v1, 0x7

    .line 763
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 764
    :cond_13
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0x8

    .line 765
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    :cond_20
    :goto_20
    const-string/jumbo v1, "www."

    .line 768
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v4, 0x4

    .line 769
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2e
    const-string/jumbo v4, "url = "

    if-eqz v3, :cond_63

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 775
    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_ab

    .line 778
    :cond_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 780
    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 782
    invoke-static {v2, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 783
    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 785
    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object v0, v2

    .line 788
    :goto_ab
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static validateHostName(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "*"

    .line 2278
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 2284
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xff

    if-le v1, v3, :cond_17

    return v0

    :cond_17
    const-string v1, "\\."

    .line 2291
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v0

    .line 2298
    :goto_1e
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 2299
    aget-object v4, v1, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_34

    const/16 v5, 0x7a

    if-le v4, v5, :cond_3c

    :cond_34
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3e

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_3e

    :cond_3c
    move v3, v2

    goto :goto_42

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_41
    move v3, v0

    :goto_42
    if-nez v3, :cond_45

    return v0

    :cond_45
    move v3, v0

    move v4, v3

    .line 2313
    :goto_47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5a

    .line 2314
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_57

    add-int/lit8 v4, v4, 0x1

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 2321
    :cond_5a
    array-length p0, v1

    if-lt v4, p0, :cond_5e

    return v0

    .line 2327
    :cond_5e
    array-length p0, v1

    move v3, v0

    :goto_60
    if-ge v3, p0, :cond_70

    aget-object v4, v1, v3

    .line 2328
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-le v4, v5, :cond_6d

    return v0

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 2340
    :cond_70
    array-length p0, v1

    move v3, v0

    :goto_72
    if-ge v3, p0, :cond_96

    aget-object v4, v1, v3

    const-string v5, "^[A-Za-z0-9-]+$"

    .line 2341
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_95

    .line 2342
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_92

    goto :goto_95

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    :cond_95
    :goto_95
    return v0

    :cond_96
    return v2
.end method


# virtual methods
.method public final GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
    .registers 3

    .line 1306
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_c

    .line 1307
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger-IA;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 1309
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    return-object p0
.end method

.method public final addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 9

    .line 969
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 970
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_17

    const-string p0, "MiscPolicy"

    const-string p1, "addBookmark() - Could not create context for current user!"

    .line 973
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 977
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 978
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 979
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_30

    .line 984
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_2e

    if-eqz v0, :cond_2f

    :cond_2e
    move v2, v3

    :cond_2f
    return v2

    :cond_30
    return v3
.end method

.method public final addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 16

    const-string p0, "MiscPolicy"

    .line 889
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 890
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 891
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 897
    :try_start_18
    sget-object v8, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-static {p1, p2, v0, v8}, Lcom/android/server/enterprise/general/MiscPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_2e

    const-string p1, "addBookmarkToAndroidBrowser() - No provider found!!!"

    .line 899
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_25} :catch_ef
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_25} :catch_d3
    .catchall {:try_start_18 .. :try_end_25} :catchall_d1

    if-eqz v7, :cond_2a

    .line 957
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_2a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 902
    :cond_2e
    :try_start_2e
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    move v9, v6

    :goto_33
    if-ge v9, v8, :cond_47

    .line 907
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v10, 0x5

    .line 908
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    goto :goto_47

    :cond_44
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_47
    :goto_47
    const-string/jumbo v9, "title"

    .line 917
    invoke-virtual {v3, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "url"

    .line 918
    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "created"

    .line 919
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "bookmark"

    const/4 p3, 0x1

    .line 920
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "date"

    .line 921
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    sget-object p2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    const-string/jumbo p2, "thumbnail"

    .line 923
    invoke-static {p4}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    invoke-virtual {v3, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_81
    if-lez v8, :cond_89

    const/4 p2, 0x2

    .line 932
    invoke-interface {v7, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_88} :catch_ef
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_88} :catch_d3
    .catchall {:try_start_2e .. :try_end_88} :catchall_d1

    goto :goto_8a

    :cond_89
    move p2, v6

    :goto_8a
    const-string/jumbo p4, "visits"

    if-nez v8, :cond_99

    add-int/lit8 p2, p2, 0x3

    .line 939
    :try_start_91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_a0

    .line 941
    :cond_99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_a0
    const-string p2, "addBookmarkToAndroidBrowser() - Inserting bookmark into database"

    .line 943
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {p1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_c5

    .line 946
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addBookmarkToAndroidBrowser() - uri: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, p3

    goto :goto_ca

    :cond_c5
    const-string p1, "addBookmarkToAndroidBrowser() - uri is null!"

    .line 949
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_91 .. :try_end_ca} :catch_ef
    .catch Ljava/lang/IllegalStateException; {:try_start_91 .. :try_end_ca} :catch_d3
    .catchall {:try_start_91 .. :try_end_ca} :catchall_d1

    .line 957
    :goto_ca
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_cd
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f7

    :catchall_d1
    move-exception p0

    goto :goto_f8

    :catch_d3
    move-exception p1

    .line 954
    :try_start_d4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Android provider error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_cd

    goto :goto_ca

    :catch_ef
    const-string p1, "Android provider error - unknown uri"

    .line 952
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_d4 .. :try_end_f4} :catchall_d1

    if-eqz v7, :cond_cd

    goto :goto_ca

    :goto_f7
    return v6

    :goto_f8
    if-eqz v7, :cond_fd

    .line 957
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_fd
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    throw p0
.end method

.method public final addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "MiscPolicy"

    .line 828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 830
    :try_start_d
    sget-object v7, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v8, v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_1f

    const-string v0, "addBookmarkToChrome cursor is null"

    .line 832
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1b} :catch_de
    .catchall {:try_start_d .. :try_end_1b} :catchall_dc

    .line 881
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 835
    :cond_1f
    :try_start_1f
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    int-to-long v10, v10

    .line 836
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_27} :catch_de
    .catchall {:try_start_1f .. :try_end_27} :catchall_dc

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    const-string/jumbo v14, "type"

    const-string/jumbo v15, "parent"

    const-string/jumbo v6, "title"

    const-string v8, "_id"

    const-wide/16 v16, 0x1

    if-nez v9, :cond_68

    .line 840
    :try_start_3a
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    add-long v10, v10, v16

    .line 841
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "Samsung Mobile"

    .line 842
    invoke-virtual {v9, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    .line 843
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v12, 0x2

    .line 844
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_5e} :catch_de
    .catchall {:try_start_3a .. :try_end_5e} :catchall_dc

    .line 846
    :try_start_5e
    invoke-virtual {v0, v7, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_63
    .catchall {:try_start_5e .. :try_end_62} :catchall_dc

    goto :goto_69

    :catch_63
    :try_start_63
    const-string v7, "Exception creating parent folder"

    .line 848
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    const/4 v7, 0x0

    :goto_69
    const/4 v9, 0x1

    if-eqz v1, :cond_b5

    if-eqz v2, :cond_b5

    .line 856
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    add-long v10, v10, v16

    .line 857
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 858
    invoke-virtual {v7, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    .line 859
    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 861
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_93} :catch_de
    .catchall {:try_start_63 .. :try_end_93} :catchall_dc

    .line 863
    :try_start_93
    sget-object v1, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_99} :catch_9a
    .catchall {:try_start_93 .. :try_end_99} :catchall_dc

    goto :goto_b6

    :catch_9a
    move-exception v0

    .line 866
    :try_start_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateBookmarks : insert bookmark items to db. Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_b6

    :cond_b5
    move-object v8, v7

    :goto_b6
    if-eqz v8, :cond_d2

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBookmarkToChrome() - uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    goto :goto_d8

    :cond_d2
    const-string v0, "addBookmarkToChrome() - uri is null!"

    .line 876
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_d7} :catch_de
    .catchall {:try_start_9b .. :try_end_d7} :catchall_dc

    const/4 v6, 0x0

    .line 881
    :goto_d8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e7

    :catchall_dc
    move-exception v0

    goto :goto_e8

    :catch_de
    :try_start_de
    const-string v0, "Chrome provider error - unknown uri"

    .line 879
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_dc

    .line 881
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, 0x0

    :goto_e7
    return v6

    :goto_e8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    throw v0
.end method

.method public final addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string p0, "MiscPolicy"

    .line 794
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_c
    const-string/jumbo v4, "title"

    .line 798
    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "url"

    .line 799
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "editable"

    const/4 p3, 0x1

    .line 800
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    sget-object p2, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 803
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addBookmarkToSBrowser() - uri: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p3

    goto :goto_51

    :cond_44
    const-string p1, "addBookmarkToSBrowser() - uri is null!"

    .line 806
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_49} :catch_4c
    .catchall {:try_start_c .. :try_end_49} :catchall_4a

    goto :goto_51

    :catchall_4a
    move-exception p0

    goto :goto_55

    :catch_4c
    :try_start_4c
    const-string p1, "Sbrowser provider error - unknown uri"

    .line 809
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_4a

    .line 811
    :goto_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    throw p0
.end method

.method public addWebBookmarkBitmap(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 5

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_13

    if-nez p3, :cond_9

    goto :goto_13

    .line 731
    :cond_9
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public addWebBookmarkByteBuffer(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z
    .registers 5

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_13

    if-nez p3, :cond_9

    goto :goto_13

    .line 719
    :cond_9
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 1909
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1910
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "MISC"

    const-string/jumbo v3, "nfcStateChangeAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    if-eqz v0, :cond_50

    .line 1914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1917
    :try_start_1d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "MiscPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has change NFC state change to "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1918
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1916
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_4b

    .line 1920
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    :catchall_4b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1921
    throw p0

    :cond_50
    :goto_50
    return v0
.end method

.method public changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v0, p0

    .line 1213
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 1214
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1215
    iget-object v2, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "android"

    const/4 v10, 0x0

    invoke-static {v2, v4, v10, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    const-string v11, "MiscPolicy"

    if-nez v2, :cond_1f

    const-string v0, "Could not create context for current user!"

    .line 1218
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 1222
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1223
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1224
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    .line 1229
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v2, v3, :cond_3b

    const-string v0, "changeLockScreenString():get AdminId failed!! "

    .line 1230
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_3b
    const/4 v2, 0x1

    if-eqz p2, :cond_49

    .line 1237
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gez v3, :cond_45

    goto :goto_49

    :cond_45
    move-object/from16 v3, p2

    move v4, v10

    goto :goto_4c

    :cond_49
    :goto_49
    const-string v3, ""

    move v4, v2

    .line 1243
    :goto_4c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-le v5, v6, :cond_6e

    .line 1244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "changeLockScreenString():lock screen text is truncated "

    .line 1245
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    move-object v15, v3

    const-string v3, "Admin "

    const-string v8, "Couldn\'t write string "

    const-string/jumbo v5, "lock_screen_owner_info"

    const-string/jumbo v6, "lockscreenstring"

    const-string v7, "MISC"

    if-nez v4, :cond_ec

    const-string v4, "changeLockScreenString(): apply restriction"

    .line 1251
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v4, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v10, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v10, v7, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_13e

    const-string v4, "changeLockScreenString(): ret is true set value"

    .line 1257
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    const-string/jumbo v6, "lock_screen_owner_info_enabled"

    invoke-interface {v4, v6, v2, v9}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, v5, v15, v9}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v4, 0x1

    .line 1266
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has changed lock screen string to "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_c4} :catch_cd

    move v3, v0

    move-object v1, v8

    move v8, v9

    .line 1265
    :try_start_c7
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_e4

    :catch_cb
    move-exception v0

    goto :goto_cf

    :catch_cd
    move-exception v0

    move-object v1, v8

    .line 1270
    :goto_cf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e4
    const-string/jumbo v0, "my_profile_enabled"

    const/4 v2, 0x0

    .line 1274
    invoke-static {v14, v0, v2, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_13e

    :cond_ec
    move v2, v10

    move-object v10, v8

    const-string v4, "changeLockScreenString(): revoke restriction"

    .line 1279
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v4, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v8, v7, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    .line 1286
    :try_start_fb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, v5, v15, v9}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v4, 0x1

    .line 1289
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has cleared the lock screen string."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v3, v0

    move v8, v9

    .line 1288
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_fb .. :try_end_126} :catch_127

    goto :goto_13d

    :catch_127
    move-exception v0

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13d
    move v10, v14

    .line 1297
    :cond_13e
    :goto_13e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeLockScreenString():ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10
.end method

.method public declared-synchronized clearAllGlobalProxy()V
    .registers 7

    monitor-enter p0

    .line 2469
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    .line 2471
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_31

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_12

    .line 2480
    :try_start_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_36

    .line 2472
    monitor-exit p0

    return-void

    .line 2474
    :cond_12
    :try_start_12
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "globalProxy"

    .line 2475
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v3, 0x0

    .line 2477
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    const-string v5, "RESTRICTION"

    .line 2478
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_31

    .line 2480
    :try_start_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_36

    .line 2482
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v2

    .line 2480
    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2481
    throw v2
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final clearAuthConfigFromDb()V
    .registers 3

    .line 2201
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "GlobalProxyAuthTable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method public clearClipboardData(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 7

    .line 1716
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndClipboardPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "MiscPolicy"

    const-string v1, "clearClipboardData()"

    .line 1717
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_f
    const-string v4, "clipboard"

    .line 1720
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1721
    invoke-static {v4}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_35
    .catchall {:try_start_f .. :try_end_19} :catchall_33

    if-nez v4, :cond_1f

    .line 1731
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 1725
    :cond_1f
    :try_start_1f
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1726
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0, p1}, Landroid/content/IClipboard;->clearPrimaryClip(Ljava/lang/String;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2e} :catch_35
    .catchall {:try_start_1f .. :try_end_2e} :catchall_33

    .line 1731
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_33
    move-exception p0

    goto :goto_3f

    :catch_35
    move-exception p0

    :try_start_36
    const-string p1, "clearClipboardData() : failed because error occurs. "

    .line 1728
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    .line 1731
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1732
    throw p0
.end method

.method public final declared-synchronized clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 2486
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "globalProxy"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_11
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_11} :catch_47
    .catchall {:try_start_2 .. :try_end_11} :catchall_45

    if-nez v1, :cond_15

    .line 2488
    monitor-exit p0

    return v0

    .line 2495
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 2497
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxyRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2500
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearAuthConfigFromDb()V

    .line 2501
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearProxyInfoFromDb()V

    .line 2504
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    const-string p1, ""

    .line 2506
    invoke-static {p1, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object p1

    .line 2508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_45

    .line 2510
    :try_start_33
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3e

    .line 2512
    :try_start_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_45

    const/4 p1, 0x1

    .line 2514
    monitor-exit p0

    return p1

    :catchall_3e
    move-exception p1

    .line 2512
    :try_start_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2513
    throw p1
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_45

    .line 2516
    :cond_43
    monitor-exit p0

    return v0

    :catchall_45
    move-exception p1

    goto :goto_50

    :catch_47
    :try_start_47
    const-string p1, "MiscPolicy"

    const-string v1, "clearGlobalProxyEnable.SettingNotFoundException"

    .line 2491
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_45

    .line 2492
    monitor-exit p0

    return v0

    :goto_50
    monitor-exit p0

    throw p1
.end method

.method public clearGlobalProxyEnableEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 2456
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2457
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    return p0
.end method

.method public clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 2461
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2462
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    return p0
.end method

.method public clearNotificationDialog()V
    .registers 5

    .line 2653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2655
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_19

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 2660
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2658
    :cond_10
    :try_start_10
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearNotificationDialog()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 2660
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2661
    throw p0
.end method

.method public final clearProxyInfoFromDb()V
    .registers 4

    .line 2205
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GlobalProxyTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2206
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    return-void
.end method

.method public final convertAuthConfigToContentValues(ILcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;
    .registers 4

    .line 2080
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 2081
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "adminUid"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2082
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "host"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "port"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2084
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "username"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "password"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final convertProxyInfoToContentValues(ILandroid/net/ProxyInfo;)Landroid/content/ContentValues;
    .registers 7

    .line 2091
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 2095
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_16

    .line 2096
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 2098
    :goto_17
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 2099
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_26
    move-object v2, v1

    .line 2101
    :goto_27
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 2102
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/utils/NetworkUtils;->getExclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2104
    :cond_35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "adminUid"

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "host"

    .line 2105
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "port"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "pacfile"

    .line 2107
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "exclusion"

    .line 2108
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final convertStringToList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2450
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_15
    return-object p0
.end method

.method public deleteWebBookmark(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 4

    .line 738
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 743
    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeFromBookmarks(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 2581
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump KioskModeService"

    .line 2583
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2587
    :cond_10
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 2588
    :try_start_13
    iget-object p3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 2589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStartNFCHistoryList.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, p3, :cond_57

    .line 2591
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 2594
    :cond_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_13 .. :try_end_58} :catchall_61

    .line 2595
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->dumpEnterpriseProxyCache(Ljava/io/PrintWriter;)V

    .line 2597
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->dumpNfcStateChangeAllowed(Ljava/io/PrintWriter;)V

    return-void

    :catchall_61
    move-exception p0

    .line 2594
    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final dumpNfcStateChangeAllowed(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1941
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "  No admin blocking NFC State change"

    .line 1942
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_24

    .line 1944
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  NFC State change blocked by admin UID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method public final enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 283
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceMDMAppCaller()V
    .registers 2

    .line 2259
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knox.permission.KNOX_SET_PROXY_CREDENTIAL_INTERNAL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 2260
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller does not have required permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 268
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndClipboardPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 294
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 309
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 278
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5

    .line 304
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const-string v2, "android.permission.NETWORK_STACK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndOldSecurityOrNewInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 299
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 289
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndWriteSettingsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3

    .line 273
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 263
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final floatToIndex(F)I
    .registers 8

    .line 1843
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    move v2, v1

    .line 1845
    :goto_7
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 1846
    aget v3, v3, v2

    sub-float v4, v3, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    sub-int/2addr v2, v1

    return v2

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_7

    .line 1852
    :cond_1e
    array-length p0, v3

    sub-int/2addr p0, v1

    .line 1853
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "floatToIndex(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiscPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getAppUidBrowserList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2643
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    const/4 p0, 0x0

    .line 2648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 2646
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidBrowserList()Ljava/util/List;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 2648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2649
    throw p0
.end method

.method public getAppUidFromSocketPortNumber(I)Ljava/lang/String;
    .registers 6

    .line 2689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2691
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    const/4 p0, 0x0

    .line 2696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 2694
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromSocketPortNumber(I)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 2696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2697
    throw p0
.end method

.method public final getAuthConfigFromDb()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    .line 2210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "host"

    const-string/jumbo v2, "port"

    const-string/jumbo v3, "username"

    const-string/jumbo v4, "password"

    .line 2213
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 2220
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "GlobalProxyAuthTable"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_21

    return-object v0

    .line 2230
    :cond_21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 2231
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2232
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 2233
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2234
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2236
    new-instance v9, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v9, v6, v7, v8, v5}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2238
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_4e
    return-object v0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .registers 3

    .line 2024
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 2025
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 2027
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getCredentialsFails(Ljava/lang/String;)I
    .registers 3

    .line 329
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceMDMAppCaller()V

    const-string v0, "credentials_fails_count"

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 331
    iget p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    return p0

    .line 333
    :cond_e
    iget p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    return p0
.end method

.method public getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 7

    .line 1148
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 1149
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1153
    :cond_10
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v0

    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLockScreenString : currentSetAdminId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_61

    .line 1163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1165
    :try_start_36
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    const-string/jumbo v4, "lock_screen_owner_info"

    invoke-interface {p0, v4, v3, p1}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_47
    .catchall {:try_start_36 .. :try_end_41} :catchall_45

    .line 1169
    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_61

    :catchall_45
    move-exception p0

    goto :goto_5d

    :catch_47
    move-exception p0

    .line 1167
    :try_start_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get string lock_screen_owner_info"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_48 .. :try_end_5c} :catchall_45

    goto :goto_41

    .line 1169
    :goto_5d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    throw p0

    :cond_61
    :goto_61
    return-object v3
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 253
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 255
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final declared-synchronized getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 9

    monitor-enter p0

    .line 2394
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 2395
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxyCache()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c8

    if-eqz v0, :cond_b

    .line 2396
    monitor-exit p0

    return-object v0

    .line 2398
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getAuthConfigFromDb()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "host"

    const-string/jumbo v3, "port"

    const-string/jumbo v4, "pacfile"

    const-string v5, "exclusion"

    .line 2401
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 2408
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GlobalProxyTable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_c8

    if-nez v2, :cond_2b

    .line 2412
    monitor-exit p0

    return-object v0

    .line 2414
    :cond_2b
    :try_start_2b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "host"

    .line 2415
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "port"

    .line 2416
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_4d

    const/4 v5, -0x1

    goto :goto_51

    .line 2417
    :cond_4d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_51
    const-string v6, "exclusion"

    .line 2418
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pacfile"

    .line 2419
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2421
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 2423
    :cond_6a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 2424
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v6

    goto :goto_81

    .line 2426
    :cond_79
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/general/MiscPolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2427
    invoke-static {v4, v5, v6}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v6

    .line 2429
    :goto_81
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 2430
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 2431
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 2432
    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 2433
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9b

    .line 2434
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 2437
    :cond_9b
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2436
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 2438
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    goto :goto_2f

    :cond_aa
    const-string v3, "MiscPolicy"

    .line 2440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid proxy properties, ignoring: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2440
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_2b .. :try_end_c4} :catchall_c8

    goto/16 :goto_2f

    .line 2446
    :cond_c6
    monitor-exit p0

    return-object v0

    :catchall_c8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2362
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 2365
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 2366
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_77

    .line 2370
    :cond_20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2372
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2374
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2376
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2378
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 2379
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_66
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2380
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_76
    return-object p1

    .line 2367
    :cond_77
    :goto_77
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 2

    .line 2389
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    return-object p0
.end method

.method public getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    .registers 6

    const-string v0, "/data/system/SimCard.dat"

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 493
    :try_start_5
    new-instance p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    const-string p1, "SimChangeTime"

    .line 494
    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_9a

    const-string v1, "-1"

    if-nez p1, :cond_15

    move-object p1, v1

    .line 498
    :cond_15
    :try_start_15
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    .line 499
    new-instance p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v2, "PreviousSimCountryIso"

    .line 500
    invoke-static {v2, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    .line 503
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v2, "PreviousSimOperatorName"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    .line 506
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v2, "PreviousSimOperator"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    .line 508
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v2, "PreviousSimPhoneNumber"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 511
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v2, "PreviousSimSerialNumber"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;

    const-string p1, "SimChangeOperation"

    .line 515
    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5b

    goto :goto_5c

    :cond_5b
    move-object v1, p1

    .line 519
    :goto_5c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    .line 522
    new-instance p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v1, "CurrentSimCountryIso"

    .line 523
    invoke-static {v1, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    .line 526
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v1, "CurrentSimOperatorName"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    .line 529
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v1, "CurrentSimOperator"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    .line 531
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v1, "CurrentSimPhoneNumber"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 534
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v1, "CurrentSimSerialNumber"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_99} :catch_9a

    return-object p0

    :catch_9a
    move-exception p0

    .line 540
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    new-instance p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    return-object p0
.end method

.method public final getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .line 1132
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    const-string/jumbo v0, "lock_settings"

    .line 1134
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1133
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 1136
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method public getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 6

    .line 2677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2679
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    const/4 p0, 0x0

    .line 2684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 2682
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 2684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2685
    throw p0
.end method

.method public getSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;)F
    .registers 6

    const-string p1, "MiscPolicy"

    .line 1809
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    .line 1810
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1813
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1815
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v1, :cond_68

    .line 1816
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    .line 1817
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1819
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v2, v2

    if-lt v1, v2, :cond_5a

    .line 1820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSystemActiveFontSize() : resized font index value. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 1823
    :cond_5a
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget p0, p0, v1

    iput p0, v0, Landroid/content/res/Configuration;->fontScale:F
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_60} :catch_61

    goto :goto_68

    :catch_61
    move-exception p0

    const-string/jumbo v1, "getSystemActiveFontSize(): Unable to read font size"

    .line 1826
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1829
    :cond_68
    :goto_68
    iget p0, v0, Landroid/content/res/Configuration;->fontScale:F

    return p0
.end method

.method public getSystemFontSizes(Lcom/samsung/android/knox/ContextInfo;)[F
    .registers 2

    .line 1836
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1837
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    return-object p0
.end method

.method public getSystemFonts(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .registers 2

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initializeGlobalProxyCache()V
    .registers 2

    .line 2601
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    return-void
.end method

.method public final isAdminLockScreenStringSet(I)I
    .registers 6

    const-string/jumbo v0, "lockscreenstring"

    const-string v1, "adminUid"

    .line 1186
    :try_start_5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    .line 1190
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 1193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1194
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1195
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 1197
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 1196
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3b

    return p0

    :catch_3b
    :cond_3b
    const/4 p0, -0x1

    return p0
.end method

.method public final isChinaModel()Z
    .registers 2

    .line 2569
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CountryISO"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    .line 2570
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isFolderModel(Landroid/content/Context;)Z
    .registers 2

    .line 2565
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.sec.feature.folder_type"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isGlobalProxyAllowed()Z
    .registers 3

    .line 2351
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "RESTRICTION"

    const-string/jumbo v1, "globalProxy"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2354
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public final isGlobalProxySetForAdmin(II)Z
    .registers 5

    .line 2067
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "RESTRICTION"

    const-string/jumbo v1, "globalProxy"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_b
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_b} :catch_f

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :catch_f
    const-string p0, "MiscPolicy"

    const-string/jumbo p1, "setGlobalProxy.SettingNotFoundException"

    .line 2073
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public isNFCStarted()Z
    .registers 4

    .line 1989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1991
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    .line 1992
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_14
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2000
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :catchall_12
    move-exception p0

    goto :goto_20

    :catch_14
    :try_start_14
    const-string p0, "MiscPolicy"

    const-string v2, "Error on isNFCStarted"

    .line 1998
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_12

    .line 2000
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_1f
    return p0

    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2001
    throw p0
.end method

.method public isNFCStateChangeAllowed()Z
    .registers 3

    .line 1928
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "MISC"

    const-string/jumbo v1, "nfcStateChangeAllowed"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1930
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_23

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0
.end method

.method public final isRingToneEntryExist(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J
    .registers 16

    const-string p1, "MiscPolicy"

    .line 405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 407
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRingToneEntryExist : whereClause :"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p3

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 414
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_58

    .line 415
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p0, 0x0

    .line 416
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_57} :catch_5d
    .catchall {:try_start_9 .. :try_end_57} :catchall_5b

    move-wide v2, p2

    :cond_58
    if-eqz v4, :cond_66

    goto :goto_63

    :catchall_5b
    move-exception p0

    goto :goto_7f

    :catch_5d
    move-exception p0

    .line 420
    :try_start_5e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_5b

    if-eqz v4, :cond_66

    .line 423
    :goto_63
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isRingToneEntryExist : return "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :goto_7f
    if-eqz v4, :cond_84

    .line 423
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    throw p0
.end method

.method public final isSupportSettings2()Z
    .registers 4

    .line 2530
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "com.android.settings"

    const/16 v2, 0x80

    .line 2532
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 2534
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "settings_apk_name"

    const-string/jumbo v2, "none"

    .line 2535
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecSettings2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_28

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    move v0, p0

    goto :goto_31

    :catch_28
    move-exception p0

    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "isSupportSettings2()"

    .line 2540
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return v0
.end method

.method public final makeStartNFCHistory(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 6

    .line 2006
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_37

    .line 2008
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_37
    return-void
.end method

.method public final makeTime()Ljava/lang/String;
    .registers 4

    .line 2015
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2016
    sget-object p0, Lcom/android/server/enterprise/general/MiscPolicy;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    .line 1686
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1688
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 1689
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor(I)V

    .line 1691
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 6

    .line 1701
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v0

    if-ne v0, p1, :cond_32

    .line 1704
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_owner_info"

    const-string v2, ""

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_32

    :catch_1b
    move-exception v0

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiscPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_32
    :goto_32
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_41

    .line 1710
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    :cond_41
    return-void
.end method

.method public final readFile(Ljava/lang/String;)[B
    .registers 8

    const/4 p0, 0x0

    .line 438
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_60
    .catchall {:try_start_1 .. :try_end_b} :catchall_5b

    .line 443
    :try_start_b
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_4c

    long-to-int v1, v1

    .line 449
    new-array p0, v1, [B

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_26

    sub-int v3, v1, v2

    .line 454
    invoke-virtual {p1, p0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_56
    .catchall {:try_start_b .. :try_end_22} :catchall_54

    if-ltz v3, :cond_26

    add-int/2addr v2, v3

    goto :goto_1a

    :cond_26
    if-lt v2, v1, :cond_31

    .line 470
    :try_start_28
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_70

    :catch_2c
    move-exception p1

    .line 474
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70

    .line 459
    :cond_31
    :try_start_31
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The file was not completely read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_4c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The file is too big"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_54} :catch_56
    .catchall {:try_start_31 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    goto :goto_92

    :catch_56
    move-exception v0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_62

    :catchall_5b
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_92

    :catch_60
    move-exception v0

    move-object p1, p0

    .line 464
    :goto_62
    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_5b

    if-eqz p0, :cond_6f

    .line 470
    :try_start_67
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p0

    .line 474
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6f
    :goto_6f
    move-object p0, p1

    :goto_70
    const-string p1, "MiscPolicy"

    if-eqz p0, :cond_8b

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readFile returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :cond_8b
    const-string/jumbo v0, "readFile returns : null"

    .line 480
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_91
    return-object p0

    :goto_92
    if-eqz p1, :cond_9c

    .line 470
    :try_start_94
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception p1

    .line 474
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    :cond_9c
    :goto_9c
    throw p0
.end method

.method public refreshCredentialsDialogFails()V
    .registers 5

    .line 2629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2631
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_19

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 2636
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2634
    :cond_10
    :try_start_10
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->refreshCredentialsDialogFails()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 2636
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2637
    throw p0
.end method

.method public final removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    const-string p0, "MiscPolicy"

    .line 1055
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1057
    :try_start_9
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v8, "url = ? AND title = ?"

    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/String;

    aput-object p2, v9, v4

    aput-object p3, v9, v2

    const/4 v10, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_1d} :catch_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_1d} :catch_90
    .catchall {:try_start_9 .. :try_end_1d} :catchall_8e

    if-nez p2, :cond_2e

    :try_start_1f
    const-string/jumbo p1, "removeBookmarkFromAndroidBrowser() - No provider found!!!"

    .line 1063
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_25} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_25} :catch_89
    .catchall {:try_start_1f .. :try_end_25} :catchall_86

    if-eqz p2, :cond_2a

    .line 1098
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 1066
    :cond_2e
    :try_start_2e
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-nez p3, :cond_41

    const-string/jumbo p1, "removeBookmarkFromAndroidBrowser() - Empty cursor!!!"

    .line 1069
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_3a} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_3a} :catch_89
    .catchall {:try_start_2e .. :try_end_3a} :catchall_86

    .line 1098
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 1073
    :cond_41
    :try_start_41
    sget-object p3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 1074
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    .line 1073
    invoke-static {p3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    .line 1075
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_5e

    if-eqz p3, :cond_5e

    const-string/jumbo v5, "removeBookmarkFromAndroidBrowser() - Deleting bookmark"

    .line 1077
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {p1, p3, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7f

    .line 1082
    :cond_5e
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "bookmark"

    .line 1083
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_6c} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_6c} :catch_89
    .catchall {:try_start_41 .. :try_end_6c} :catchall_86

    :try_start_6c
    const-string/jumbo v6, "removeBookmarkFromAndroidBrowser() - Updating database"

    .line 1085
    invoke-static {p0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {p1, p3, v5, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/IllegalStateException; {:try_start_6c .. :try_end_75} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c .. :try_end_75} :catch_8c
    .catchall {:try_start_6c .. :try_end_75} :catchall_86

    goto :goto_7f

    :catch_76
    :try_start_76
    const-string/jumbo p1, "removeFromBookmarks"

    const-string/jumbo p3, "no database!"

    .line 1088
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_7f} :catch_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_76 .. :try_end_7f} :catch_89
    .catchall {:try_start_76 .. :try_end_7f} :catchall_86

    .line 1098
    :goto_7f
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ba

    :catchall_86
    move-exception p0

    move-object v3, p2

    goto :goto_bb

    :catch_89
    move-exception p1

    move-object v3, p2

    goto :goto_91

    :catch_8c
    move-object v3, p2

    goto :goto_ac

    :catchall_8e
    move-exception p0

    goto :goto_bb

    :catch_90
    move-exception p1

    .line 1095
    :goto_91
    :try_start_91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Android provider error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b6

    goto :goto_b3

    :catch_ac
    :goto_ac
    const-string p1, "Android provider error - unknown uri"

    .line 1093
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_91 .. :try_end_b1} :catchall_8e

    if-eqz v3, :cond_b6

    .line 1098
    :goto_b3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_b6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v4

    :goto_ba
    return v2

    :goto_bb
    if-eqz v3, :cond_c0

    .line 1098
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_c0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1100
    throw p0
.end method

.method public final removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string p0, "MiscPolicy"

    .line 1024
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1026
    :try_start_7
    sget-object v3, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v4, "url = ? AND title = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v2

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    .line 1029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeBookmarkFromChrome() - rows: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_3a

    const-string/jumbo p3, "url = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p2, v4, v2

    .line 1038
    invoke-virtual {p1, v3, p3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_3a} :catch_40
    .catchall {:try_start_7 .. :try_end_3a} :catchall_3e

    :cond_3a
    if-lez p3, :cond_45

    move v2, v6

    goto :goto_45

    :catchall_3e
    move-exception p0

    goto :goto_49

    :catch_40
    :try_start_40
    const-string p1, "Chrome provider error - unknown uri"

    .line 1044
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_3e

    .line 1046
    :cond_45
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1047
    throw p0
.end method

.method public final removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-string p0, "MiscPolicy"

    .line 1006
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1008
    :try_start_7
    sget-object v3, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v4, "url = ? AND title = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v2

    const/4 p2, 0x1

    aput-object p3, v5, p2

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1011
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeBookmarkFromSBrowser() - rows: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_2d} :catch_33
    .catchall {:try_start_7 .. :try_end_2d} :catchall_31

    if-lez p1, :cond_38

    move v2, p2

    goto :goto_38

    :catchall_31
    move-exception p0

    goto :goto_3c

    :catch_33
    :try_start_33
    const-string p1, "Sbrowser provider error - unknown uri"

    .line 1014
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_31

    .line 1016
    :cond_38
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1017
    throw p0
.end method

.method public final removeFromBookmarks(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 1110
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1111
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_18

    const-string p0, "MiscPolicy"

    const-string/jumbo p1, "removeFromBookmarks() - Could not create context for current user!"

    .line 1114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1118
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1119
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1120
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_31

    .line 1125
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2f

    if-eqz v0, :cond_30

    :cond_2f
    move v2, v3

    :cond_30
    return v2

    :cond_31
    return v3
.end method

.method public retrieveExternalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 5

    .line 2605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2607
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    const/4 p0, 0x0

    .line 2612
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 2610
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getCurrentAppliedProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 2612
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2613
    throw p0
.end method

.method public retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 2244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2246
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    const/4 p0, 0x0

    .line 2251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 2249
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 2251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2252
    throw p0
.end method

.method public final retrieveSystemFontSizes()V
    .registers 8

    const-string v0, "com.android.settings"

    .line 1858
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "retrieveSystemFontSizes(): start to retrieve system font sizes."

    .line 1861
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1866
    :try_start_13
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_26

    const-string/jumbo p0, "retrieveSystemFontSizes(): failed because Setting Context is null"

    .line 1868
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_69
    .catchall {:try_start_13 .. :try_end_22} :catchall_67

    .line 1902
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1871
    :cond_26
    :try_start_26
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1874
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/general/MiscPolicy;->supportBigFont(Landroid/content/Context;)Z

    move-result v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_69
    .catchall {:try_start_26 .. :try_end_2e} :catchall_67

    const-string v6, "array"

    if-eqz v4, :cond_3a

    :try_start_32
    const-string/jumbo v4, "sec_entryvalues_big_font_size"

    .line 1875
    invoke-virtual {v5, v4, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_41

    :cond_3a
    const-string/jumbo v4, "sec_entryvalues_8_step_font_size"

    .line 1877
    invoke-virtual {v5, v4, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_41
    if-nez v0, :cond_4d

    const-string/jumbo p0, "retrieveSystemFontSizes() : failed to get resource ID. "

    .line 1890
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_49} :catch_69
    .catchall {:try_start_32 .. :try_end_49} :catchall_67

    .line 1902
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1894
    :cond_4d
    :try_start_4d
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1895
    array-length v4, v0

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v4, 0x0

    .line 1896
    :goto_57
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v6, v5

    if-ge v4, v6, :cond_70

    .line 1897
    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v5, v4
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_64} :catch_69
    .catchall {:try_start_4d .. :try_end_64} :catchall_67

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :catchall_67
    move-exception p0

    goto :goto_74

    :catch_69
    move-exception p0

    :try_start_6a
    const-string/jumbo v0, "retrieveSystemFontSizes() failed: unexpected exception. "

    .line 1900
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_67

    .line 1902
    :cond_70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_74
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1903
    throw p0
.end method

.method public final saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 9

    .line 2178
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    .line 2179
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/AuthConfig;

    .line 2180
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2181
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->convertAuthConfigToContentValues(ILcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v3, "GlobalProxyAuthTable"

    .line 2180
    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    const/4 v1, 0x0

    goto :goto_f

    :cond_2f
    return v1
.end method

.method public final saveProxyInfoToDb(ILandroid/net/ProxyInfo;)Z
    .registers 5

    .line 2192
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2193
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->convertProxyInfoToContentValues(ILandroid/net/ProxyInfo;)Landroid/content/ContentValues;

    move-result-object p0

    const-string p1, "GlobalProxyTable"

    .line 2192
    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public setCredentialsFails(Ljava/lang/String;I)V
    .registers 4

    .line 317
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceMDMAppCaller()V

    const-string v0, "credentials_fails_count"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 319
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    goto :goto_10

    .line 321
    :cond_e
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    :goto_10
    return-void
.end method

.method public final declared-synchronized setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .registers 8

    monitor-enter p0

    .line 2114
    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_SECURE_NETWORK"

    const-string/jumbo v2, "setGlobalProxy"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "proxyTp"

    .line 2115
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "proxyAuth"

    .line 2116
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v4

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 2118
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 2120
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_b1

    if-nez v0, :cond_3a

    .line 2121
    monitor-exit p0

    return v4

    .line 2124
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    if-nez v0, :cond_4c

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxySetForAdmin(II)Z

    move-result v0
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_b1

    if-nez v0, :cond_4c

    .line 2126
    monitor-exit p0

    return v4

    .line 2129
    :cond_4c
    :try_start_4c
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_b1

    if-nez v0, :cond_54

    .line 2130
    monitor-exit p0

    return v4

    .line 2133
    :cond_54
    :try_start_54
    invoke-static {p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 2134
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_b1

    if-nez v1, :cond_60

    .line 2135
    monitor-exit p0

    return v4

    .line 2139
    :cond_60
    :try_start_60
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxyRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_b1

    if-nez v1, :cond_68

    .line 2140
    monitor-exit p0

    return v4

    .line 2143
    :cond_68
    :try_start_68
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearAuthConfigFromDb()V

    .line 2144
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearProxyInfoFromDb()V

    .line 2146
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v1
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_b1

    if-nez v1, :cond_78

    .line 2147
    monitor-exit p0

    return v4

    .line 2149
    :cond_78
    :try_start_78
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->saveProxyInfoToDb(ILandroid/net/ProxyInfo;)Z

    move-result v0
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_b1

    if-nez v0, :cond_82

    .line 2150
    monitor-exit p0

    return v4

    .line 2153
    :cond_82
    :try_start_82
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 2154
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getLocalProxyInfo()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 2156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_98
    .catchall {:try_start_82 .. :try_end_98} :catchall_b1

    .line 2158
    :try_start_98
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_a1

    .line 2160
    :try_start_9d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a6

    :catchall_a1
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2161
    throw p1

    .line 2165
    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 2167
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxyRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1
    :try_end_af
    .catchall {:try_start_9d .. :try_end_af} :catchall_b1

    monitor-exit p0

    return p1

    :catchall_b1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2032
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2033
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 2034
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 2036
    invoke-virtual {v0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 2037
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result p0

    return p0
.end method

.method public setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .registers 3

    .line 2043
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2044
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result p0

    return p0
.end method

.method public final setGlobalProxyRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 2171
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "globalProxy"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final setNFCStateChangeAllowedSystemUI(IZ)V
    .registers 5

    .line 2553
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2555
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 2556
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNFCStateChangeAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2560
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "MiscPolicy"

    const-string/jumbo p2, "setNFCStateChangeAllowedSystemUI() failed. "

    .line 2558
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 2560
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2561
    throw p0
.end method

.method public setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .registers 7

    .line 2665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2667
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_19

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 2672
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2670
    :cond_10
    :try_start_10
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 2672
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2673
    throw p0
.end method

.method public setRingerBytes(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .registers 14

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/utils/Utils;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 347
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_16} :catch_17

    goto :goto_3b

    :catch_17
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDM_SECURITY Permission is not granted - Check for WRITE_SETTINGS permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiscPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndWriteSettingsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_3b

    .line 353
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :goto_3b
    move-object v1, p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 354
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/general/MiscPolicy;->updateDatabase(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1320
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    if-eqz p3, :cond_7

    const/4 p0, 0x0

    return p0

    .line 1325
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;F)Z
    .registers 13

    .line 1746
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 1749
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const-string v0, "MiscPolicy"

    const/4 v1, 0x0

    if-nez p1, :cond_14

    const-string/jumbo p0, "setSystemActiveFontSize() : failed to retrieve font datas."

    .line 1750
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1754
    :cond_14
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "font_size"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1755
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result p2

    .line 1756
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne p1, p2, :cond_32

    const-string/jumbo p0, "setSystemActiveFontSize() : same font size"

    .line 1759
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1765
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1767
    :try_start_36
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_b5

    const-string/jumbo v7, "large_font"

    const/high16 v8, 0x1000000

    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    if-ge p1, v3, :cond_5b

    if-ne p2, v3, :cond_5b

    .line 1769
    :try_start_4a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1771
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1772
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6f

    :cond_5b
    if-ne p1, v3, :cond_6f

    if-ge p2, v3, :cond_6f

    .line 1774
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1776
    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1777
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6f
    .catchall {:try_start_4a .. :try_end_6f} :catchall_b5

    .line 1780
    :cond_6f
    :goto_6f
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1785
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 1786
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v3, v3, p2

    iput v3, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1790
    :try_start_81
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1791
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x7

    if-lt p2, p1, :cond_9f

    .line 1793
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessiblity_font_switch"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9f} :catch_a6
    .catchall {:try_start_81 .. :try_end_9f} :catchall_a4

    .line 1799
    :cond_9f
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v4

    goto :goto_b0

    :catchall_a4
    move-exception p0

    goto :goto_b1

    :catch_a6
    move-exception p0

    :try_start_a7
    const-string/jumbo p1, "setSystemActiveFontSize(): failed to set font size. "

    .line 1796
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_a4

    .line 1799
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_b0
    return v1

    :goto_b1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1800
    throw p0

    :catchall_b5
    move-exception p0

    .line 1780
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1781
    throw p0
.end method

.method public showCredentialsDialogNotification(Ljava/lang/String;)V
    .registers 6

    .line 2617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2619
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_19

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 2624
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2622
    :cond_10
    :try_start_10
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->showCredentialsDialogNotification(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 2624
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2625
    throw p0
.end method

.method public startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 1964
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1965
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->makeStartNFCHistory(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 1967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1969
    :try_start_b
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p2, :cond_18

    .line 1972
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result p0

    goto :goto_1c

    .line 1974
    :cond_18
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_22
    .catchall {:try_start_b .. :try_end_1c} :catchall_20

    .line 1982
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    :catchall_20
    move-exception p0

    goto :goto_2e

    :catch_22
    :try_start_22
    const-string p0, "MiscPolicy"

    const-string p1, "Error on Start/Stop NFC"

    .line 1980
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_20

    .line 1982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_2d
    return p0

    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    throw p0
.end method

.method public final supportBigFont(Landroid/content/Context;)Z
    .registers 2

    .line 2574
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->isFolderModel(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_18

    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string p1, "elite"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .registers 1

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    return-void
.end method

.method public final updateAdminsBlockingNfcStateChange()V
    .registers 6

    .line 1950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 1951
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "nfcStateChangeAllowed"

    const-string v2, "adminUid"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "MISC"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1953
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1954
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_30

    const/4 v4, 0x1

    goto :goto_38

    .line 1955
    :cond_30
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_38
    if-nez v4, :cond_1c

    .line 1957
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 1958
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_46
    return-void
.end method

.method public final updateDatabase(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13

    const-string p6, "artist"

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 361
    :try_start_6
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->isRingToneEntryExist(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v4, v2

    if-eqz p1, :cond_34

    const-string p1, "MiscPolicy"

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringtone entry exist deleting it :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    :cond_34
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    .line 370
    invoke-virtual {p1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "title"

    const-string v2, "IT Admin tone"

    .line 371
    invoke-virtual {p1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_size"

    .line 372
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo p3, "mime_type"

    const-string p4, "audio/*"

    .line 373
    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1, p6, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "is_ringtone"

    .line 375
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo p3, "is_notification"

    .line 376
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo p3, "is_alarm"

    .line 377
    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo p3, "is_music"

    .line 378
    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 381
    iget-object p3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_80} :catch_83
    .catchall {:try_start_6 .. :try_end_80} :catchall_81

    goto :goto_87

    :catchall_81
    move-exception p0

    goto :goto_9a

    :catch_83
    move-exception p1

    .line 384
    :try_start_84
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_81

    .line 386
    :goto_87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p2, :cond_99

    .line 390
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 391
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 393
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_99
    return-void

    .line 386
    :goto_9a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    throw p0
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 3

    .line 2549
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setNFCStateChangeAllowedSystemUI(IZ)V

    return-void
.end method

.method public final validateIp(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 2521
    sget-object p0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2522
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 5

    .line 2048
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2050
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2051
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 2052
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result p1

    if-ltz p1, :cond_2d

    const v2, 0xffff

    if-gt p1, v2, :cond_2d

    .line 2055
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->validateIp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->validateHostName(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    :cond_2d
    return v1

    .line 2058
    :cond_2e
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_45

    .line 2059
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_45

    :cond_43
    const/4 p0, 0x1

    return p0

    :cond_45
    :goto_45
    return v1
.end method
