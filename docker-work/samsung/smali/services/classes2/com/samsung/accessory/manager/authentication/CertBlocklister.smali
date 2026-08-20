.class public Lcom/samsung/accessory/manager/authentication/CertBlocklister;
.super Landroid/os/Binder;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_BLOCKED_KEY:Ljava/lang/String; = "cover_authentication_blocked"

.field public static final BLOCKLIST_ROOT:Ljava/lang/String;

.field public static final BLOCKLIST_SEPARATOR:Ljava/lang/String; = ","

.field public static final DBG:Z

.field public static final PUBKEY_BLOCKLIST_KEY:Ljava/lang/String; = "cover_pubkey_blocklist"

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "SAccessoryManager_CertBlocklister"

.field public static mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

.field public static mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

.field public static mIsBlocked:Z


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmCertBlocklistListener()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmIsBlocked(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 36
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->DBG:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/saccessory_manager/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->BLOCKLIST_ROOT:Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cover_pubkey_blocklist.txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 210
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->registerObservers(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;
    .registers 3

    .line 222
    new-instance p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;

    const-string v0, "cover_authentication_blocked"

    invoke-direct {p0, v0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object p0
.end method

.method public final buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;
    .registers 5

    .line 215
    new-instance p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    const-string v1, "cover_pubkey_blocklist"

    const-string/jumbo v2, "pubkey"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object p0
.end method

.method public isAuthenticationBlocked()Z
    .registers 1

    .line 67
    sget-boolean p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    return p0
.end method

.method public isThisKeyBlocklisted(Ljava/lang/String;)Z
    .registers 2

    .line 71
    sget-object p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public readFile()V
    .registers 1

    .line 75
    sget-object p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->readFile()V

    return-void
.end method

.method public final registerObservers(Landroid/content/ContentResolver;)V
    .registers 5

    .line 227
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    const-string v0, "cover_pubkey_blocklist"

    .line 229
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    const/4 v2, 0x1

    .line 228
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "cover_authentication_blocked"

    .line 235
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;

    move-result-object p0

    .line 234
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setCertBlocklistListener(Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;)V
    .registers 2

    .line 62
    sput-object p1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    return-void
.end method
