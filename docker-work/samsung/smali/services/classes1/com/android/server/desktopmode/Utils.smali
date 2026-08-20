.class public Lcom/android/server/desktopmode/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final APP_PRIMARY_COLOR:Ljava/lang/String; = "#ff6c39"

.field public static final EXTRA_DATA2:Ljava/lang/String; = "tips_extras2"

.field public static final EXTRA_TIPS_ACTION:Ljava/lang/String; = "tips_action"

.field public static final EXTRA_TIPS_ACTION_TYPE:Ljava/lang/String; = "tips_action_type"

.field public static final EXTRA_TIPS_APP_NAME:Ljava/lang/String; = "tips_app_name"

.field public static final EXTRA_TIPS_CATEGORY:Ljava/lang/String; = "tips_noti_category"

.field public static final EXTRA_TIPS_COLOR:Ljava/lang/String; = "tips_app_primary_color"

.field public static final EXTRA_TIPS_CONDITION:Ljava/lang/String; = "tips_condition"

.field public static final EXTRA_TIPS_ID:Ljava/lang/String; = "tips_id"

.field public static final EXTRA_TIPS_TEXT:Ljava/lang/String; = "tips_text"

.field public static final EXTRA_TIPS_TITLE:Ljava/lang/String; = "tips_title"

.field public static final EXTRA_TIPS_TYPE:Ljava/lang/String; = "tips_extras"

.field public static final KEY_MUSE_CATEGORY_1DEPTH_ID:Ljava/lang/String; = "&category1_id="

.field public static final KEY_MUSE_CHANNEL_CODE:Ljava/lang/String; = "&chnlCd="

.field public static final KEY_MUSE_COUNTRY_CODE:Ljava/lang/String; = "&_common_country="

.field public static final KEY_MUSE_DEVICE_MODEL_CODE:Ljava/lang/String; = "&dvcModelCd="

.field public static final KEY_MUSE_DEVICE_OS_VERSION:Ljava/lang/String; = "&dvcOSVersion="

.field public static final KEY_MUSE_LANGUAGE_CODE:Ljava/lang/String; = "&_common_lang="

.field public static final KEY_MUSE_MCC:Ljava/lang/String; = "&mcc="

.field public static final KEY_MUSE_MNC:Ljava/lang/String; = "&mnc="

.field public static final KEY_MUSE_ODC_VERSION:Ljava/lang/String; = "&odcVersion="

.field public static final KEY_MUSE_REQUEST_CONTENT_ID:Ljava/lang/String; = "&r_faq_id="

.field public static final KEY_MUSE_SAMSUNGACCOUNT_ID:Ljava/lang/String; = "&saccountID="

.field public static final KEY_MUSE_SERVICE_CODE:Ljava/lang/String; = "serviceCd="

.field public static final KEY_MUSE_TARGET_URL:Ljava/lang/String; = "&targetUrl="

.field public static final MSG_GET_CERTAIN_CONTENT:I = 0x7

.field public static final MSG_SHOW_EXT_TIPS:I = 0x9

.field public static final TAG:Ljava/lang/String;

.field public static final TIPS_INTENT_SERVICE_NAME:Ljava/lang/String; = ".TipsIntentService"

.field public static final TIPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.tips"


# direct methods
.method public static synthetic $r8$lambda$cOGZ-6XsCw55Q5XfOn14i41ZDBc(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/Utils;->lambda$writeFile$0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/Utils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_6

    const-string/jumbo p0, "null"

    return-object p0

    .line 215
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_36

    const-string v3, ", "

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_46
    const/16 p0, 0x7d

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_3

    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method public static dockStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_27

    const/16 v0, 0x72

    if-eq p0, v0, :cond_24

    packed-switch p0, :pswitch_data_2a

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    const-string p0, "SEM_EXTRA_DOCK_STATE_HDMI_ADAPTER"

    return-object p0

    :pswitch_1e
    const-string p0, "SEM_EXTRA_DOCK_STATE_DEX_STATION"

    return-object p0

    :pswitch_21
    const-string p0, "SEM_EXTRA_DOCK_STATE_MULTIPORT_ADAPTER"

    return-object p0

    :cond_24
    const-string p0, "SEM_EXTRA_DOCK_STATE_DEX_PAD"

    return-object p0

    :cond_27
    const-string p0, "EXTRA_DOCK_STATE_UNDOCKED"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x6d
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V
    .registers 6

    if-nez p1, :cond_9

    const-string/jumbo p1, "null"

    .line 199
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    :cond_41
    return-void
.end method

.method public static getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .registers 3

    if-eqz p0, :cond_2a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2a

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_10

    goto :goto_2a

    :cond_10
    const-string v0, "display"

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_2a

    .line 125
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 127
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x103012b

    .line 128
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    :cond_2a
    :goto_2a
    return-object p0
.end method

.method public static getMcc(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "phone"

    .line 306
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 308
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1c

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p0, ""

    return-object p0
.end method

.method public static getMnc(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "phone"

    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 318
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 319
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1b

    .line 320
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p0, ""

    return-object p0
.end method

.method public static getMuseUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://help.content.samsung.com/csweb/auth/gosupport.do?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {p0}, Lcom/android/server/desktopmode/Utils;->getPostDataForMuse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOrPut(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;",
            "Ljava/util/function/Supplier<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 92
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 94
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 95
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object v0
.end method

.method public static getPostDataForMuse(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "serviceCd=sdex&targetUrl=/faq/searchFaq.do&chnlCd=ODC&_common_country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.csc.countryiso_code"

    .line 288
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&_common_lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {p0}, Lcom/android/server/desktopmode/Utils;->getSupportLocaleLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&dvcModelCd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&odcVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.sec.android.app.desktoplauncher"

    .line 294
    invoke-static {p0, v1}, Lcom/android/server/desktopmode/Utils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p0}, Lcom/android/server/desktopmode/Utils;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {p0}, Lcom/android/server/desktopmode/Utils;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&dvcOSVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&saccountID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {p0}, Lcom/android/server/desktopmode/Utils;->getSamsungAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "persist.omc.sales_code"

    .line 426
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 428
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v0, "ril.sales_code"

    .line 430
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_21
    return-object v0
.end method

.method public static getSamsungAccountId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 270
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p0

    .line 272
    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    .line 273
    iget-object v3, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 274
    iget-object p0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    const-string p0, ""

    return-object p0
.end method

.method public static getSupportLocaleLang(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->isChineseUtils(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    :cond_37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_10a

    :goto_42
    move v0, p0

    goto/16 :goto_f3

    :sswitch_45
    const-string/jumbo v0, "zh_MO_#Hans"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_42

    :cond_4f
    const/16 v0, 0xd

    goto/16 :goto_f3

    :sswitch_53
    const-string/jumbo v0, "zh_TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_42

    :cond_5d
    const/16 v0, 0xc

    goto/16 :goto_f3

    :sswitch_61
    const-string/jumbo v0, "zh_MO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_42

    :cond_6b
    const/16 v0, 0xb

    goto/16 :goto_f3

    :sswitch_6f
    const-string/jumbo v0, "zh_HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_42

    :cond_79
    const/16 v0, 0xa

    goto/16 :goto_f3

    :sswitch_7d
    const-string/jumbo v0, "zh_CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_42

    :cond_87
    const/16 v0, 0x9

    goto/16 :goto_f3

    :sswitch_8b
    const-string/jumbo v0, "pt_PT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_42

    :cond_95
    const/16 v0, 0x8

    goto :goto_f3

    :sswitch_98
    const-string/jumbo v0, "pt_BR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    goto :goto_42

    :cond_a2
    const/4 v0, 0x7

    goto :goto_f3

    :sswitch_a4
    const-string v0, "fr_FR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    goto :goto_42

    :cond_ad
    const/4 v0, 0x6

    goto :goto_f3

    :sswitch_af
    const-string v0, "fr_CA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto :goto_42

    :cond_b8
    const/4 v0, 0x5

    goto :goto_f3

    :sswitch_ba
    const-string v0, "es_ES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    goto :goto_42

    :cond_c3
    const/4 v0, 0x4

    goto :goto_f3

    :sswitch_c5
    const-string v0, "es_BR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    goto/16 :goto_42

    :cond_cf
    const/4 v0, 0x3

    goto :goto_f3

    :sswitch_d1
    const-string v0, "en_US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    goto/16 :goto_42

    :cond_db
    const/4 v0, 0x2

    goto :goto_f3

    :sswitch_dd
    const-string v0, "en_GB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    goto/16 :goto_42

    :cond_e7
    const/4 v0, 0x1

    goto :goto_f3

    :sswitch_e9
    const-string v3, "ar_AE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    goto/16 :goto_42

    :cond_f3
    :goto_f3
    packed-switch v0, :pswitch_data_144

    goto :goto_108

    :pswitch_f7
    const-string/jumbo v2, "zh_cn"

    goto :goto_108

    :pswitch_fb
    const-string/jumbo v2, "pt_latn"

    goto :goto_108

    :pswitch_ff
    const-string v2, "es_latn"

    goto :goto_108

    .line 360
    :pswitch_102
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_108
    return-object v2

    nop

    :sswitch_data_10a
    .sparse-switch
        0x58c26f2 -> :sswitch_e9
        0x5c2b431 -> :sswitch_dd
        0x5c2b5f4 -> :sswitch_d1
        0x5c4f981 -> :sswitch_c5
        0x5c4f9df -> :sswitch_ba
        0x5d29cb1 -> :sswitch_af
        0x5d29d1f -> :sswitch_a4
        0x660706b -> :sswitch_98
        0x660721f -> :sswitch_8b
        0x6e7e71c -> :sswitch_7d
        0x6e7e7b4 -> :sswitch_6f
        0x6e7e853 -> :sswitch_61
        0x6e7e934 -> :sswitch_53
        0x6e2aec55 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_ff
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_fb
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_f7
        :pswitch_102
        :pswitch_f7
    .end packed-switch
.end method

.method public static getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 328
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 331
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_f} :catch_11

    return-object p0

    :cond_10
    return-object v0

    :catch_11
    move-exception p0

    .line 336
    sget-object p1, Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static isChineseUtils(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "zh_CN_#Hans"

    .line 377
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "zh_HK_#Hant"

    .line 378
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "zh_TW_#Hant"

    .line 379
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "zh_MO_#Hant"

    .line 380
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method

.method public static isLduModel()Z
    .registers 5

    .line 391
    invoke-static {}, Lcom/android/server/desktopmode/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_38

    goto :goto_32

    :sswitch_12
    const-string v1, "PAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v4, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v1, "LDU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_32

    :cond_26
    move v4, v2

    goto :goto_32

    :sswitch_28
    const-string v1, "FOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_32

    :cond_31
    move v4, v3

    :goto_32
    packed-switch v4, :pswitch_data_46

    return v3

    :pswitch_36
    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        0x110a7 -> :sswitch_28
        0x125dd -> :sswitch_1d
        0x1347f -> :sswitch_12
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method public static isRetailMode(Landroid/content/Context;I)Z
    .registers 3

    .line 384
    invoke-static {}, Lcom/android/server/desktopmode/Utils;->isLduModel()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Utils;->isShopDemo(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isShopDemo(Landroid/content/Context;I)Z
    .registers 4

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shopdemo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    move v1, p1

    :cond_10
    return v1
.end method

.method public static iteratorToList(Ljava/util/Iterator;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_15

    .line 111
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 112
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    return-object v0
.end method

.method public static synthetic lambda$writeFile$0(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, ", async="

    const-string v3, ", value="

    if-eqz v1, :cond_54

    .line 179
    :try_start_f
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_31

    .line 181
    :try_start_20
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 182
    :try_start_23
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_31

    goto :goto_54

    :catchall_27
    move-exception v0

    .line 179
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v1

    :try_start_2d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw v0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    .line 183
    sget-object v1, Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to writeFile(), path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :cond_54
    :goto_54
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_80

    sget-object v0, Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile(), path="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", returning"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    return-void
.end method

.method public static powerModeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "POWER_MODE_DOZE_SUSPEND"

    return-object p0

    :cond_20
    const-string p0, "POWER_MODE_NORMAL"

    return-object p0

    :cond_23
    const-string p0, "POWER_MODE_DOZE"

    return-object p0

    :cond_26
    const-string p0, "POWER_MODE_OFF"

    return-object p0
.end method

.method public static readFile(Ljava/lang/String;)I
    .registers 2

    const/4 v0, -0x1

    .line 136
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static readFile(Ljava/lang/String;I)I
    .registers 6

    .line 142
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_29

    :catch_d
    move-exception v0

    .line 144
    sget-object v1, Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to readFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return p1
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 153
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_2e

    .line 155
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    .line 156
    :try_start_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2e

    goto :goto_4a

    :catchall_24
    move-exception v0

    .line 153
    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v1

    :try_start_2a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    .line 157
    sget-object v1, Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to readFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_4a
    :goto_4a
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return-object p1
.end method

.method public static runIfNotNull(Ljava/lang/Object;Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 87
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    .line 101
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_e

    .line 102
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 104
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_11
    return-void
.end method

.method public static showTipsNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 403
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.tips"

    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    .line 405
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x7

    const-string/jumbo v5, "tips_extras"

    .line 407
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "tips_extras2"

    .line 408
    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 409
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 411
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x9

    .line 412
    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "tips_id"

    .line 413
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_noti_category"

    const-string/jumbo p2, "recommendation"

    .line 414
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tips_app_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_title"

    .line 416
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_text"

    .line 417
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_action_type"

    const/4 p2, 0x1

    .line 418
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "tips_action"

    .line 419
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_app_primary_color"

    const-string p3, "#ff6c39"

    .line 420
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_condition"

    .line 421
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static writeFile(Ljava/lang/String;I)V
    .registers 3

    const/4 v0, 0x1

    .line 166
    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static writeFile(Ljava/lang/String;IZ)V
    .registers 3

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 174
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/desktopmode/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeFile(), path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", async="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2b
    new-instance v0, Lcom/android/server/desktopmode/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/desktopmode/Utils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_3a

    .line 191
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3d

    .line 193
    :cond_3a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_3d
    return-void
.end method
