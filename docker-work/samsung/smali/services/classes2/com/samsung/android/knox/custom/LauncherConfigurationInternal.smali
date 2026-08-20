.class public Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;
.super Ljava/lang/Object;
.source "LauncherConfigurationInternal.java"


# static fields
.field public static final ARG_GETHOMEMODE_HOMEMODE:Ljava/lang/String; = "home_mode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FEATURE_SHORTCUT_FOR_EASYMODE:I = 0x3e9

.field public static final HOME_MODE_APPS:I = 0x3

.field public static final HOME_MODE_EASY:I = 0x1

.field public static final HOME_MODE_HOME_ONLY:I = 0x2

.field public static final KEY_CELLDIMENSION_COLS_INT:Ljava/lang/String; = "cols"

.field public static final KEY_CELLDIMENSION_ROWS_INT:Ljava/lang/String; = "rows"

.field public static final KEY_COMPONENT_COMPONENTNAME:Ljava/lang/String; = "component"

.field public static final KEY_COORDINATION_POSITION_POINT:Ljava/lang/String; = "coordination_position"

.field public static final KEY_COORDINATION_SIZE_POINT:Ljava/lang/String; = "coordination_size"

.field public static final KEY_FEATURE_INT:Ljava/lang/String; = "feature"

.field public static final KEY_HOMEMODE_STRING:Ljava/lang/String; = "home_mode"

.field public static final KEY_INDEX_INT:Ljava/lang/String; = "index"

.field public static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field public static final KEY_ITEMCOUNT_INT:Ljava/lang/String; = "itemcount"

.field public static final KEY_PAGE_INT:Ljava/lang/String; = "page"

.field public static final KEY_STATE_BOOLEAN:Ljava/lang/String; = "state"

.field public static final KEY_SUPPLEMENT_SERVICE_PAGE_VISIBILITY_BOOLEAN:Ljava/lang/String; = "visibility"

.field public static final METHOD_ADD_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field public static final METHOD_ADD_WIDGET:Ljava/lang/String; = "add_widget"

.field public static final METHOD_DISABLE_APPS_BUTTON:Ljava/lang/String; = "disable_apps_button"

.field public static final METHOD_ENABLE_APPS_BUTTON:Ljava/lang/String; = "enable_apps_button"

.field public static final METHOD_GET_APPS_BUTTON_STATE:Ljava/lang/String; = "get_apps_button_state"

.field public static final METHOD_GET_APPS_CELL_DIMENSION:Ljava/lang/String; = "get_apps_cell_dimension"

.field public static final METHOD_GET_HOME_CELL_DIMENSION:Ljava/lang/String; = "get_home_cell_dimension"

.field public static final METHOD_GET_HOME_MODE:Ljava/lang/String; = "get_home_mode"

.field public static final METHOD_GET_HOTSEAT_ITEM:Ljava/lang/String; = "get_hotseat_item"

.field public static final METHOD_GET_HOTSEAT_ITEM_COUNT:Ljava/lang/String; = "get_hotseat_item_count"

.field public static final METHOD_GET_HOTSEAT_MAXITEM_COUNT:Ljava/lang/String; = " get_hotseat_maxitem_count"

.field public static final METHOD_GET_SUPPLEMENT_SERVICE_PAGE_VISIBILITY:Ljava/lang/String; = "get_supplement_service_page_visibility"

.field public static final METHOD_IS_SUPPORTED:Ljava/lang/String; = "is_supported"

.field public static final METHOD_MAKE_EMPTY_POSITION:Ljava/lang/String; = "make_empty_position"

.field public static final METHOD_REMOVE_HOTSEAT_ITEM:Ljava/lang/String; = "remove_hotseat_item"

.field public static final METHOD_REMOVE_PAGE_FROM_HOME:Ljava/lang/String; = "remove_page_from_home"

.field public static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field public static final METHOD_REMOVE_WIDGET:Ljava/lang/String; = "remove_widget"

.field public static final METHOD_SET_HOTSEAT_ITEM:Ljava/lang/String; = "add_hotseat_item"

.field public static final METHOD_SET_SUPPLEMENT_SERVICE_PAGE_VISIBILITY:Ljava/lang/String; = "set_supplement_service_page_visibility"

.field public static final METHOD_SWITCH_HOME_MODE:Ljava/lang/String; = "switch_home_mode"

.field public static final RESULT_ACCESS_DENIED:I = -0x64

.field public static final RESULT_FAILURE:I = -0x2

.field public static final RESULT_NOT_FOUND:I = -0x3

.field public static final RESULT_NOT_SUPPORTED:I = -0x1

.field public static final RESULT_PARAM_ERROR:I = -0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUPPORTED:I = 0x0

.field public static final SUPPLEMENT_SERVICE_PAGE_INVISIBLE:I = 0x5

.field public static final SUPPLEMENT_SERVICE_PAGE_VISIBLE:I = 0x4

.field public static final VALUE_GETHOMEMODE_EASYMODE:Ljava/lang/String; = "easy_mode"

.field public static final VALUE_GETHOMEMODE_HOMEANDAPPSMODE:Ljava/lang/String; = "home_apps_mode"

.field public static final VALUE_GETHOMEMODE_HOMEONLYMODE:Ljava/lang/String; = "home_only_mode"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sec.android.app.launcher.settings/settings"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addShortcut(ILandroid/graphics/Point;Landroid/content/ComponentName;)I
    .registers 6

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    .line 258
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "coordination_position"

    .line 259
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "component"

    .line 260
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "add_shortcut"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 p2, -0x2

    .line 262
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public addWidget(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/content/ComponentName;)I
    .registers 7

    .line 238
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    .line 239
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "coordination_position"

    .line 240
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "coordination_size"

    .line 241
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "component"

    .line 242
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "add_widget"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 p2, -0x2

    .line 244
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAppsButtonVisibility()Z
    .registers 4

    .line 321
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_apps_button_state"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "invocation_result"

    const/4 v1, -0x2

    .line 322
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    const-string/jumbo v0, "state"

    .line 324
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_21
    return v1
.end method

.method public getAppsCellDimension()Landroid/util/Size;
    .registers 4

    .line 191
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_apps_cell_dimension"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "rows"

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "cols"

    .line 193
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 194
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public getHomeCellDimension()Landroid/util/Size;
    .registers 4

    .line 184
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_home_cell_dimension"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "rows"

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "cols"

    .line 186
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 187
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public getHomeMode()I
    .registers 5

    .line 153
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_home_mode"

    const-string v2, "home_mode"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 154
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "easy_mode"

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const-string v0, "home_apps_mode"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 p0, 0x3

    return p0

    :cond_29
    const-string v0, "home_only_mode"

    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x2

    return p0

    :cond_33
    const/4 p0, -0x2

    return p0
.end method

.method public getHotseatItem(I)Landroid/content/ComponentName;
    .registers 5

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index"

    .line 219
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_hotseat_item"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 221
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "component"

    .line 222
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p1, :cond_2f

    .line 223
    instance-of p1, p0, Landroid/content/ComponentName;

    if-eqz p1, :cond_2f

    .line 224
    check-cast p0, Landroid/content/ComponentName;

    return-object p0

    :cond_2f
    return-object v2
.end method

.method public getHotseatItemCount()I
    .registers 4

    .line 198
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_hotseat_item_count"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "itemcount"

    const/4 v1, -0x2

    .line 199
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getHotseatMaxItemCount()I
    .registers 4

    .line 203
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, " get_hotseat_maxitem_count"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "itemcount"

    const/4 v1, -0x2

    .line 204
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSupplementServicePageVisibility()Z
    .registers 4

    .line 293
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_supplement_service_page_visibility"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "invocation_result"

    const/4 v1, -0x2

    .line 294
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    const-string/jumbo v1, "visibility"

    .line 296
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public isSupported(I)I
    .registers 5

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "feature"

    .line 146
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "is_supported"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 148
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public makeEmptyPosition(ILandroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 6

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "coordination_position"

    .line 277
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "coordination_size"

    .line 278
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 279
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "make_empty_position"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 p2, -0x2

    .line 280
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeHotseatItem(I)I
    .registers 5

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index"

    .line 231
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_hotseat_item"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 233
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removePageFromHome(I)I
    .registers 5

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    .line 286
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_page_from_home"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 288
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeShortcut(Landroid/content/ComponentName;)I
    .registers 5

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "component"

    .line 268
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_shortcut"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 270
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeWidget(Landroid/content/ComponentName;)I
    .registers 5

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "component"

    .line 250
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_widget"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 252
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setAppsButtonVisibility(Z)I
    .registers 4

    .line 310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 312
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "enable_apps_button"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_25

    .line 314
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "disable_apps_button"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    :goto_25
    const/4 p1, -0x2

    const-string v0, "invocation_result"

    .line 316
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setHotseatItem(ILandroid/content/ComponentName;)I
    .registers 5

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index"

    .line 210
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "component"

    .line 211
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 212
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "add_hotseat_item"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 p2, -0x2

    .line 213
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setSupplementServicePageVisibility(Z)I
    .registers 5

    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visibility"

    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "set_supplement_service_page_visibility"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 305
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public switchHomeMode(I)I
    .registers 5

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "home_mode"

    const/4 v2, 0x3

    if-ne p1, v2, :cond_10

    const-string p1, "home_apps_mode"

    .line 170
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_10
    const/4 v2, 0x2

    if-ne p1, v2, :cond_30

    const-string p1, "home_only_mode"

    .line 173
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_18
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const-string/jumbo v2, "switch_home_mode"

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, -0x2

    const-string v0, "invocation_result"

    .line 179
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_30
    const/4 p0, -0x1

    return p0
.end method
