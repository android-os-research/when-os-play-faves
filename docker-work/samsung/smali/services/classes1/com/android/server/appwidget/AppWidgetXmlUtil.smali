.class public Lcom/android/server/appwidget/AppWidgetXmlUtil;
.super Ljava/lang/Object;
.source "AppWidgetXmlUtil.java"


# static fields
.field public static final ATTR_AUTO_ADVANCED_VIEW_ID:Ljava/lang/String; = "auto_advance_view_id"

.field public static final ATTR_CONFIGURE:Ljava/lang/String; = "configure"

.field public static final ATTR_DESCRIPTION_RES:Ljava/lang/String; = "description_res"

.field public static final ATTR_ICON:Ljava/lang/String; = "icon"

.field public static final ATTR_INITIAL_KEYGUARD_LAYOUT:Ljava/lang/String; = "initial_keyguard_layout"

.field public static final ATTR_INITIAL_LAYOUT:Ljava/lang/String; = "initial_layout"

.field public static final ATTR_LABEL:Ljava/lang/String; = "label"

.field public static final ATTR_MAX_RESIZE_HEIGHT:Ljava/lang/String; = "max_resize_height"

.field public static final ATTR_MAX_RESIZE_WIDTH:Ljava/lang/String; = "max_resize_width"

.field public static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field public static final ATTR_MIN_RESIZE_HEIGHT:Ljava/lang/String; = "min_resize_height"

.field public static final ATTR_MIN_RESIZE_WIDTH:Ljava/lang/String; = "min_resize_width"

.field public static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field public static final ATTR_OS_FINGERPRINT:Ljava/lang/String; = "os_fingerprint"

.field public static final ATTR_PREVIEW_IMAGE:Ljava/lang/String; = "preview_image"

.field public static final ATTR_PREVIEW_LAYOUT:Ljava/lang/String; = "preview_layout"

.field public static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field public static final ATTR_SEMCONFIGURE:Ljava/lang/String; = "semConfigure"

.field public static final ATTR_TARGET_CELL_HEIGHT:Ljava/lang/String; = "target_cell_height"

.field public static final ATTR_TARGET_CELL_WIDTH:Ljava/lang/String; = "target_cell_width"

.field public static final ATTR_UPDATE_PERIOD_MILLIS:Ljava/lang/String; = "update_period_millis"

.field public static final ATTR_WIDGET_CATEGORY:Ljava/lang/String; = "widget_category"

.field public static final ATTR_WIDGET_FEATURES:Ljava/lang/String; = "widget_features"

.field public static final TAG:Ljava/lang/String; = "AppWidgetXmlUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAppWidgetProviderInfoLocked(Landroid/util/TypedXmlPullParser;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6

    .line 111
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "os_fingerprint"

    .line 112
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    .line 116
    :cond_14
    new-instance v1, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    const-string/jumbo v2, "min_width"

    const/4 v3, 0x0

    .line 117
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    const-string/jumbo v2, "min_height"

    .line 118
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const-string/jumbo v2, "min_resize_width"

    .line 119
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    const-string/jumbo v2, "min_resize_height"

    .line 120
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    const-string/jumbo v2, "max_resize_width"

    .line 121
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    const-string/jumbo v2, "max_resize_height"

    .line 122
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    const-string/jumbo v2, "target_cell_width"

    .line 123
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    const-string/jumbo v2, "target_cell_height"

    .line 124
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    const-string/jumbo v2, "update_period_millis"

    .line 125
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    const-string/jumbo v2, "initial_layout"

    .line 126
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const-string/jumbo v2, "initial_keyguard_layout"

    .line 127
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    const-string v2, "configure"

    .line 129
    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 131
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    :cond_8f
    const-string/jumbo v2, "semConfigure"

    .line 134
    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a2

    .line 136
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->semConfigure:Landroid/content/ComponentName;

    :cond_a2
    const-string/jumbo v2, "label"

    .line 139
    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    const-string/jumbo v2, "icon"

    .line 140
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const-string/jumbo v2, "preview_image"

    .line 141
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const-string/jumbo v2, "preview_layout"

    .line 142
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    const-string v2, "auto_advance_view_id"

    .line 143
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const-string/jumbo v2, "resize_mode"

    .line 144
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const-string/jumbo v2, "widget_category"

    .line 145
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    const-string/jumbo v2, "widget_features"

    .line 146
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    const-string v2, "description_res"

    .line 147
    invoke-interface {p0, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    iput p0, v1, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    return-object v1
.end method

.method public static writeAppWidgetProviderInfoLocked(Landroid/util/TypedXmlSerializer;Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    const/4 v1, 0x0

    const-string/jumbo v2, "min_width"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const-string/jumbo v2, "min_height"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    const-string/jumbo v2, "min_resize_width"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    const-string/jumbo v2, "min_resize_height"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    const-string/jumbo v2, "max_resize_width"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    const-string/jumbo v2, "max_resize_height"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    const-string/jumbo v2, "target_cell_width"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    const-string/jumbo v2, "target_cell_height"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    const-string/jumbo v2, "update_period_millis"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const-string/jumbo v2, "initial_layout"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    const-string/jumbo v2, "initial_keyguard_layout"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_6c

    .line 82
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "configure"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    :cond_6c
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->semConfigure:Landroid/content/ComponentName;

    if-eqz v0, :cond_7a

    .line 86
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "semConfigure"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    :cond_7a
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v0, :cond_85

    const-string/jumbo v2, "label"

    .line 90
    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9d

    .line 92
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Label is empty in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppWidgetXmlUtil"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_9d
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const-string/jumbo v2, "icon"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const-string/jumbo v2, "preview_image"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    const-string/jumbo v2, "preview_layout"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const-string v2, "auto_advance_view_id"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const-string/jumbo v2, "resize_mode"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    const-string/jumbo v2, "widget_category"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    const-string/jumbo v2, "widget_features"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    const-string v0, "description_res"

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v0, "os_fingerprint"

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
