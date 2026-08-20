.class public Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoDumper.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final NAF_EXCLUDED_CLASSES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    const-class v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Landroid/widget/GridView;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/ListView;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/TableLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 292
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 293
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_5
    if-ge v1, v0, :cond_34

    .line 294
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 296
    .local v2, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_33

    .line 297
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_33

    .line 300
    :cond_29
    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 301
    return v4

    .line 293
    .end local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 298
    .restart local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_33
    :goto_33
    return v4

    .line 303
    .end local v1    # "x":I
    .end local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_34
    const/4 v1, 0x0

    return v1
.end method

.method private static dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V
    .registers 15
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "index"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const-string v0, ""

    const-string v1, "node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 201
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NAF"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_1d
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "index"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "text"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resource-id"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "class"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "package"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "content-desc"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "checkable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "checked"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "clickable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "enabled"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "focusable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "focused"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "scrollable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "long-clickable"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "password"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "selected"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-static {p0, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 218
    const-string v4, "bounds"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 221
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_fb
    if-ge v4, v2, :cond_149

    .line 222
    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 223
    .local v5, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v6, 0x0

    if-eqz v5, :cond_125

    .line 224
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-eqz v7, :cond_111

    .line 225
    invoke-static {v5, p1, v4, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 226
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_146

    .line 228
    :cond_111
    sget-object v7, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v6, "Skipping invisible child: %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_146

    .line 231
    :cond_125
    sget-object v7, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    const/4 v6, 0x2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 231
    const-string v6, "Null child %d/%d, parent: %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v5    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_146
    add-int/lit8 v4, v4, 0x1

    goto :goto_fb

    .line 235
    .end local v4    # "i":I
    :cond_149
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    return-void
.end method

.method private static dumpWindowRec(Landroid/view/accessibility/AccessibilityWindowInfo;Lorg/xmlpull/v1/XmlSerializer;IIII)V
    .registers 21
    .param p0, "winfo"    # Landroid/view/accessibility/AccessibilityWindowInfo;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "index"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    move-object v0, p0

    move-object/from16 v7, p1

    const-string v8, ""

    const-string v9, "window"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "index"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 164
    .local v10, "title":Ljava/lang/CharSequence;
    if-eqz v10, :cond_1e

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v8

    :goto_1f
    const-string v2, "title"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v1

    .line 166
    .local v11, "tmpBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 167
    invoke-virtual {v11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bounds"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "active"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "focused"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "accessibility-focused"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layer"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v7, v8, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result v12

    .line 176
    .local v12, "count":I
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_8b
    const/4 v1, 0x0

    if-ge v13, v12, :cond_ca

    .line 177
    invoke-virtual {p0, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v14

    .line 178
    .local v14, "child":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v14, :cond_b7

    .line 179
    sget-object v2, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    .line 180
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    .line 179
    const-string v1, "Null window child %d/%d, parent: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_c7

    .line 183
    :cond_b7
    move-object v1, v14

    move-object/from16 v2, p1

    move v3, v13

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowRec(Landroid/view/accessibility/AccessibilityWindowInfo;Lorg/xmlpull/v1/XmlSerializer;IIII)V

    .line 184
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 176
    .end local v14    # "child":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_c7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8b

    .line 186
    .end local v13    # "i":I
    :cond_ca
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 187
    .local v2, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_ec

    .line 188
    const-string v3, "hierarchy"

    invoke-interface {v7, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rotation"

    invoke-interface {v7, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static {v2, v7, v1, v4, v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 191
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 192
    invoke-interface {v7, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f0

    .line 187
    :cond_ec
    move/from16 v4, p3

    move/from16 v5, p4

    .line 194
    :goto_f0
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;III)V
    .registers 9
    .param p0, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "local"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 64
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 65
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 66
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 68
    :cond_1f
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    .line 69
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "window_dump.xml"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V

    .line 71
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V
    .registers 14
    .param p0, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "dumpFile"    # Ljava/io/File;
    .param p2, "rotation"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 84
    const-string v0, "hierarchy"

    const-string v1, ""

    if-nez p0, :cond_7

    .line 85
    return-void

    .line 87
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 89
    .local v2, "startTime":J
    :try_start_b
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 90
    .local v4, "writer":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 91
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 92
    .local v6, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 93
    const-string v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    invoke-interface {v5, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v7, "rotation"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const/4 v7, 0x0

    invoke-static {p0, v5, v7, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 97
    invoke-interface {v5, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 99
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_46} :catch_47

    .line 103
    .end local v4    # "writer":Ljava/io/FileWriter;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stringWriter":Ljava/io/StringWriter;
    goto :goto_4f

    .line 101
    :catch_47
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v4, "failed to dump window to file"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 105
    .local v0, "endTime":J
    sget-object v4, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetch time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public static dumpWindowsToFile(Landroid/util/SparseArray;Ljava/io/File;Landroid/hardware/display/DisplayManagerGlobal;)V
    .registers 26
    .param p1, "dumpFile"    # Ljava/io/File;
    .param p2, "displayManager"    # Landroid/hardware/display/DisplayManagerGlobal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;",
            "Ljava/io/File;",
            "Landroid/hardware/display/DisplayManagerGlobal;",
            ")V"
        }
    .end annotation

    .line 117
    .local p0, "allWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    move-object/from16 v1, p0

    const-string v0, "display"

    const-string v2, "displays"

    const-string v3, ""

    invoke-virtual/range {p0 .. p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_f

    .line 118
    return-void

    .line 120
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 122
    .local v4, "startTime":J
    :try_start_13
    new-instance v6, Ljava/io/FileWriter;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 123
    .local v6, "writer":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 124
    .local v8, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    move-object v15, v9

    .line 125
    .local v15, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 126
    const-string v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    invoke-interface {v8, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const/4 v9, 0x0

    .local v9, "d":I
    invoke-virtual/range {p0 .. p0}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v13, v10

    move v12, v9

    .end local v9    # "d":I
    .local v12, "d":I
    .local v13, "nd":I
    :goto_3b
    if-ge v12, v13, :cond_d5

    .line 129
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    move v11, v9

    .line 130
    .local v11, "displayId":I
    move-object/from16 v10, p2

    invoke-virtual {v10, v11}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v9

    .line 131
    .local v9, "display":Landroid/view/Display;
    if-nez v9, :cond_51

    .line 132
    move-wide/from16 v19, v4

    move/from16 v22, v12

    move v5, v13

    goto/16 :goto_ca

    .line 134
    :cond_51
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 135
    .local v14, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_64

    .line 136
    move-wide/from16 v19, v4

    move/from16 v22, v12

    move v5, v13

    goto/16 :goto_ca

    .line 138
    :cond_64
    invoke-interface {v8, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string v1, "id"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v3, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v1

    move-object v7, v14

    .end local v14    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .local v7, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    move v14, v1

    .line 141
    .local v14, "rotation":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 142
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v9, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 143
    const/16 v16, 0x0

    .local v16, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_84} :catch_ed

    move/from16 v18, v17

    move-wide/from16 v19, v4

    move/from16 v4, v16

    .end local v16    # "i":I
    .local v4, "i":I
    .local v18, "n":I
    .local v19, "startTime":J
    :goto_8a
    move/from16 v5, v18

    .end local v18    # "n":I
    .local v5, "n":I
    if-ge v4, v5, :cond_bc

    .line 144
    :try_start_8e
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/accessibility/AccessibilityWindowInfo;

    move/from16 v17, v5

    .end local v5    # "n":I
    .local v17, "n":I
    iget v5, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v18, v7

    .end local v7    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .local v18, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget v7, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v21, v9

    .end local v9    # "display":Landroid/view/Display;
    .local v21, "display":Landroid/view/Display;
    move-object/from16 v9, v16

    move-object v10, v8

    move/from16 v16, v11

    .end local v11    # "displayId":I
    .local v16, "displayId":I
    move v11, v4

    move/from16 v22, v12

    .end local v12    # "d":I
    .local v22, "d":I
    move v12, v5

    move v5, v13

    .end local v13    # "nd":I
    .local v5, "nd":I
    move v13, v7

    invoke-static/range {v9 .. v14}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowRec(Landroid/view/accessibility/AccessibilityWindowInfo;Lorg/xmlpull/v1/XmlSerializer;IIII)V

    .line 143
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, p2

    move v13, v5

    move/from16 v11, v16

    move-object/from16 v7, v18

    move-object/from16 v9, v21

    move/from16 v12, v22

    move/from16 v18, v17

    goto :goto_8a

    .end local v16    # "displayId":I
    .end local v17    # "n":I
    .end local v18    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v21    # "display":Landroid/view/Display;
    .end local v22    # "d":I
    .local v5, "n":I
    .restart local v7    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .restart local v9    # "display":Landroid/view/Display;
    .restart local v11    # "displayId":I
    .restart local v12    # "d":I
    .restart local v13    # "nd":I
    :cond_bc
    move/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v21, v9

    move/from16 v16, v11

    move/from16 v22, v12

    move v5, v13

    .line 146
    .end local v4    # "i":I
    .end local v7    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v9    # "display":Landroid/view/Display;
    .end local v11    # "displayId":I
    .end local v12    # "d":I
    .end local v13    # "nd":I
    .local v5, "nd":I
    .restart local v16    # "displayId":I
    .restart local v18    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .restart local v21    # "display":Landroid/view/Display;
    .restart local v22    # "d":I
    invoke-interface {v8, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v14    # "rotation":I
    .end local v16    # "displayId":I
    .end local v18    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v21    # "display":Landroid/view/Display;
    :goto_ca
    add-int/lit8 v12, v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move v13, v5

    move-wide/from16 v4, v19

    .end local v22    # "d":I
    .restart local v12    # "d":I
    goto/16 :goto_3b

    .end local v5    # "nd":I
    .end local v19    # "startTime":J
    .local v4, "startTime":J
    .restart local v13    # "nd":I
    :cond_d5
    move-wide/from16 v19, v4

    move/from16 v22, v12

    move v5, v13

    .line 148
    .end local v4    # "startTime":J
    .end local v12    # "d":I
    .end local v13    # "nd":I
    .restart local v19    # "startTime":J
    invoke-interface {v8, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 150
    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_ea} :catch_eb

    .line 154
    .end local v6    # "writer":Ljava/io/FileWriter;
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v15    # "stringWriter":Ljava/io/StringWriter;
    goto :goto_f7

    .line 152
    :catch_eb
    move-exception v0

    goto :goto_f0

    .end local v19    # "startTime":J
    .restart local v4    # "startTime":J
    :catch_ed
    move-exception v0

    move-wide/from16 v19, v4

    .line 153
    .end local v4    # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "startTime":J
    :goto_f0
    sget-object v1, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v2, "failed to dump window to file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_f7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "endTime":J
    sget-object v2, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, v19

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method private static nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 3
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 266
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 267
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 268
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 270
    .local v0, "isNaf":Z
    :goto_2c
    if-nez v0, :cond_2f

    .line 271
    return v1

    .line 276
    :cond_2f
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1
.end method

.method private static nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 8
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 247
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "className":Ljava/lang/String;
    sget-object v1, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_1c

    aget-object v5, v1, v4

    .line 249
    .local v5, "excludedClassName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 250
    const/4 v1, 0x1

    return v1

    .line 248
    .end local v5    # "excludedClassName":Ljava/lang/String;
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 252
    :cond_1c
    return v3
.end method

.method private static safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 307
    if-nez p0, :cond_5

    .line 308
    const-string v0, ""

    return-object v0

    .line 310
    :cond_5
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    .local v0, "ret":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_ee

    .line 327
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 329
    .local v2, "ch":C
    const/4 v3, 0x1

    if-lt v2, v3, :cond_17

    const/16 v3, 0x8

    if-le v2, v3, :cond_e1

    :cond_17
    const/16 v3, 0xb

    if-lt v2, v3, :cond_1f

    const/16 v3, 0xc

    if-le v2, v3, :cond_e1

    :cond_1f
    const/16 v3, 0xe

    if-lt v2, v3, :cond_27

    const/16 v3, 0x1f

    if-le v2, v3, :cond_e1

    :cond_27
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x84

    if-le v2, v3, :cond_e1

    :cond_2f
    const/16 v3, 0x86

    if-lt v2, v3, :cond_37

    const/16 v3, 0x9f

    if-le v2, v3, :cond_e1

    :cond_37
    const v3, 0xfdd0

    if-lt v2, v3, :cond_41

    const v3, 0xfddf

    if-le v2, v3, :cond_e1

    :cond_41
    const v3, 0x1fffe

    if-lt v2, v3, :cond_4b

    const v3, 0x1ffff

    if-le v2, v3, :cond_e1

    :cond_4b
    const v3, 0x2fffe

    if-lt v2, v3, :cond_55

    const v3, 0x2ffff

    if-le v2, v3, :cond_e1

    :cond_55
    const v3, 0x3fffe

    if-lt v2, v3, :cond_5f

    const v3, 0x3ffff

    if-le v2, v3, :cond_e1

    :cond_5f
    const v3, 0x4fffe

    if-lt v2, v3, :cond_69

    const v3, 0x4ffff

    if-le v2, v3, :cond_e1

    :cond_69
    const v3, 0x5fffe

    if-lt v2, v3, :cond_73

    const v3, 0x5ffff

    if-le v2, v3, :cond_e1

    :cond_73
    const v3, 0x6fffe

    if-lt v2, v3, :cond_7d

    const v3, 0x6ffff

    if-le v2, v3, :cond_e1

    :cond_7d
    const v3, 0x7fffe

    if-lt v2, v3, :cond_87

    const v3, 0x7ffff

    if-le v2, v3, :cond_e1

    :cond_87
    const v3, 0x8fffe

    if-lt v2, v3, :cond_91

    const v3, 0x8ffff

    if-le v2, v3, :cond_e1

    :cond_91
    const v3, 0x9fffe

    if-lt v2, v3, :cond_9b

    const v3, 0x9ffff

    if-le v2, v3, :cond_e1

    :cond_9b
    const v3, 0xafffe

    if-lt v2, v3, :cond_a5

    const v3, 0xaffff

    if-le v2, v3, :cond_e1

    :cond_a5
    const v3, 0xbfffe

    if-lt v2, v3, :cond_af

    const v3, 0xbffff

    if-le v2, v3, :cond_e1

    :cond_af
    const v3, 0xcfffe

    if-lt v2, v3, :cond_b9

    const v3, 0xcffff

    if-le v2, v3, :cond_e1

    :cond_b9
    const v3, 0xdfffe

    if-lt v2, v3, :cond_c3

    const v3, 0xdffff

    if-le v2, v3, :cond_e1

    :cond_c3
    const v3, 0xefffe

    if-lt v2, v3, :cond_cd

    const v3, 0xeffff

    if-le v2, v3, :cond_e1

    :cond_cd
    const v3, 0xffffe

    if-lt v2, v3, :cond_d7

    const v3, 0xfffff

    if-le v2, v3, :cond_e1

    :cond_d7
    const v3, 0x10fffe

    if-lt v2, v3, :cond_e7

    const v3, 0x10ffff

    if-gt v2, v3, :cond_e7

    .line 340
    :cond_e1
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ea

    .line 342
    :cond_e7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    :goto_ea
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 344
    .end local v1    # "i":I
    .end local v2    # "ch":C
    :cond_ee
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
