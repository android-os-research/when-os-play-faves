.class public Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;
.super Ljava/lang/Object;
.source "DeXLauncherConfigurationInternal.java"


# static fields
.field public static final ALPHABETIC_GRID:Ljava/lang/String; = "alphabetical_order"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CUSTOM_GRID:Ljava/lang/String; = "custom_order"

.field public static final KEY_COMPONENT_COMPONENTNAME:Ljava/lang/String; = "component"

.field public static final KEY_COORDINATION_POSITION_POINT:Ljava/lang/String; = "coordination_position"

.field public static final KEY_HOME_URL:Ljava/lang/String; = "shortcut_uri"

.field public static final KEY_ICON_RESOURCE:Ljava/lang/String; = "shortcut_resource"

.field public static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field public static final KEY_OPTION_ORDER:Ljava/lang/String; = "option_order"

.field public static final KEY_SHORTCUT_TITLE:Ljava/lang/String; = "shortcut_title"

.field public static final METHOD_ADD_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field public static final METHOD_ADD_URL_SHORTCUT:Ljava/lang/String; = "add_uri_shortcut"

.field public static final METHOD_CHANGE_ORDER:Ljava/lang/String; = "change_order"

.field public static final METHOD_GET_ORDER:Ljava/lang/String; = "get_order"

.field public static final METHOD_MAKE_EMPTY_POSITION:Ljava/lang/String; = "make_empty_position"

.field public static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field public static final METHOD_REMOVE_URL_SHORTCUT:Ljava/lang/String; = "remove_uri_shortcut"

.field public static final RESULT_ACCESS_DENIED:I = -0x64

.field public static final RESULT_ALREADY_EMPTY:I = -0x6

.field public static final RESULT_FAILURE:I = -0x2

.field public static final RESULT_NOT_FOUND:I = -0x3

.field public static final RESULT_NOT_SUPPORTED:I = -0x1

.field public static final RESULT_PAGE_FULL:I = -0x5

.field public static final RESULT_PARAM_ERROR:I = -0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUPPORTED:I = 0x0

.field public static final TYPE_GRID:Ljava/lang/String; = "type_order"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sec.android.app.desktoplauncher.settings"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addShortcut(Landroid/graphics/Point;Landroid/content/ComponentName;)I
    .registers 5

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "coordination_position"

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "component"

    .line 117
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "add_shortcut"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 p2, -0x2

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public addURLShortcut(Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 8

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "coordination_position"

    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "shortcut_title"

    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "shortcut_uri"

    .line 95
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "shortcut_resource"

    .line 96
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "component"

    .line 97
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "add_uri_shortcut"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 p2, -0x2

    .line 100
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public changeOrder(Ljava/lang/String;)I
    .registers 5

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "option_order"

    .line 144
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "change_order"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 147
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOrder()I
    .registers 5

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_order"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "invocation_result"

    const/4 v1, -0x2

    .line 155
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public makeEmptyPosition(Landroid/graphics/Point;)I
    .registers 5

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "coordination_position"

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "make_empty_position"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 138
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeShortcut(Landroid/content/ComponentName;)I
    .registers 5

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "component"

    .line 126
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_shortcut"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 v0, -0x2

    .line 129
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 5

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "shortcut_uri"

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "component"

    .line 107
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p2, "remove_uri_shortcut"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "invocation_result"

    const/4 p2, -0x2

    .line 110
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
