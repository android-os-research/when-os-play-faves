.class public Lcom/android/server/accessibility/SamsungWindowDumpUtils;
.super Ljava/lang/Object;
.source "SamsungWindowDumpUtils.java"


# static fields
.field public static final COMMA:Ljava/lang/String; = ", "

.field public static final COMMAND_PRINT_NODE:Ljava/lang/String; = "print-accessibilitynodeinfo"

.field public static final COMMAND_PRINT_WINDOW:Ljava/lang/String; = "print-accessibilitywindowinfo"

.field public static final PRINT_NODE_ARGUMENT_SIMPLE:Ljava/lang/String; = "simple"

.field public static final PRINT_NODE_ARGUMENT_VISIBLE_ONLY:Ljava/lang/String; = "visibleOnly"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionToString(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Ljava/lang/String;
    .registers 3

    .line 241
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4c

    sparse-switch v0, :sswitch_data_76

    const-string v0, ""

    goto :goto_51

    :sswitch_10
    const-string v0, "ST"

    goto :goto_51

    :sswitch_13
    const-string v0, "DIS"

    goto :goto_51

    :sswitch_16
    const-string v0, "CLP"

    goto :goto_51

    :sswitch_19
    const-string v0, "AEXP"

    goto :goto_51

    :sswitch_1c
    const-string v0, "SS"

    goto :goto_51

    :sswitch_1f
    const-string v0, "CT"

    goto :goto_51

    :sswitch_22
    const-string v0, "PA"

    goto :goto_51

    :sswitch_25
    const-string v0, "CP"

    goto :goto_51

    :sswitch_28
    const-string v0, "SB"

    goto :goto_51

    :sswitch_2b
    const-string v0, "SF"

    goto :goto_51

    :sswitch_2e
    const-string v0, "PHE"

    goto :goto_51

    :sswitch_31
    const-string v0, "NHE"

    goto :goto_51

    :sswitch_34
    const-string v0, "PMG"

    goto :goto_51

    :sswitch_37
    const-string v0, "NMG"

    goto :goto_51

    :sswitch_3a
    const-string v0, "CAF"

    goto :goto_51

    :sswitch_3d
    const-string v0, "AF"

    goto :goto_51

    :sswitch_40
    const-string v0, "LC"

    goto :goto_51

    :sswitch_43
    const-string v0, "C"

    goto :goto_51

    :sswitch_46
    const-string v0, "CS"

    goto :goto_51

    :sswitch_49
    const-string v0, "S"

    goto :goto_51

    :cond_4c
    const-string v0, "CF"

    goto :goto_51

    :cond_4f
    const-string v0, "F"

    .line 311
    :goto_51
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_74
    return-object v0

    nop

    :sswitch_data_76
    .sparse-switch
        0x4 -> :sswitch_49
        0x8 -> :sswitch_46
        0x10 -> :sswitch_43
        0x20 -> :sswitch_40
        0x40 -> :sswitch_3d
        0x80 -> :sswitch_3a
        0x100 -> :sswitch_37
        0x200 -> :sswitch_34
        0x400 -> :sswitch_31
        0x800 -> :sswitch_2e
        0x1000 -> :sswitch_2b
        0x2000 -> :sswitch_28
        0x4000 -> :sswitch_25
        0x8000 -> :sswitch_22
        0x10000 -> :sswitch_1f
        0x20000 -> :sswitch_1c
        0x40000 -> :sswitch_19
        0x80000 -> :sswitch_16
        0x100000 -> :sswitch_13
        0x200000 -> :sswitch_10
    .end sparse-switch
.end method

.method public static createArgsWithConnectionId([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x4

    if-eqz p0, :cond_16

    .line 81
    array-length v2, p0

    if-ge v2, v1, :cond_b

    array-length v2, p0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_16

    .line 83
    aget-object v4, p0, v3

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 86
    :cond_16
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static getConnectionId([Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_13

    .line 67
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_8

    goto :goto_13

    .line 71
    :cond_8
    :try_start_8
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_13

    return p0

    :catch_13
    :cond_13
    :goto_13
    return v0
.end method

.method public static getTargetWindowId([Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_13

    .line 55
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_8

    goto :goto_13

    .line 59
    :cond_8
    :try_start_8
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_13

    return p0

    :catch_13
    :cond_13
    :goto_13
    return v0
.end method

.method public static hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .line 30
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static isCustomDumpCommands([Ljava/lang/String;)Z
    .registers 3

    .line 23
    invoke-static {}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isDebuggableBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 26
    :cond_8
    invoke-static {p0}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isPrintWindows([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isPrintNodes([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public static isDebuggableBinary()Z
    .registers 2

    .line 18
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public static isPrintNodeSimple([Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "simple"

    .line 47
    invoke-static {v0, p0}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPrintNodeVisibleOnly([Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "visibleOnly"

    .line 51
    invoke-static {v0, p0}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPrintNodes([Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "print-accessibilitynodeinfo"

    .line 43
    invoke-static {v0, p0}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPrintWindows([Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "print-accessibilitywindowinfo"

    .line 39
    invoke-static {v0, p0}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static nodeToSimpleString(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .registers 5

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ", "

    if-eqz v1, :cond_17

    .line 136
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_17
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 139
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3a

    const-string v1, "T:"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_3a
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string v1, "Err:"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_4f
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMaxTextLength()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_65

    const-string v1, "MTL:"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMaxTextLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_65
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7a

    const-string v1, "SD:"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_7a
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_8f

    const-string v1, "CD:"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_8f
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_a4

    const-string v1, "TTT:"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_a4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    const-string v1, "VID:"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_b9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_c7

    const-string v1, "V"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_c7
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_d5

    const-string v1, "AFd"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_d5
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e3

    const-string v1, "E"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_e3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_f1

    const-string v1, "Ck"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_f1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_ff

    const-string v1, "Ckd"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_ff
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_10d

    const-string v1, "F"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_10d
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_11b

    const-string v1, "Fd"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_11b
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_129

    const-string v1, "Sd"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_129
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_137

    const-string v1, "C"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_137
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_145

    const-string v1, "LC"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_145
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v1

    if-eqz v1, :cond_153

    const-string v1, "CC"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_153
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v1

    if-eqz v1, :cond_161

    const-string v1, "PWD"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_161
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_16f

    const-string v1, "S"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16f
    const-string v1, "Actions={"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_193

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 203
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->actionToString(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17c

    :cond_193
    const-string/jumbo p0, "}"

    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printNode(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityNodeInfo;IZZ)V
    .registers 10

    if-nez p1, :cond_6

    .line 212
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_6
    if-eqz p4, :cond_12

    .line 216
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_12

    .line 217
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_12
    if-eqz p3, :cond_1c

    .line 223
    invoke-static {p1}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->nodeToSimpleString(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 225
    :cond_1c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_23
    const/4 v0, -0x1

    const-string v1, ""

    :goto_26
    if-ge v0, p2, :cond_3c

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 233
    :cond_3c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_41
    if-ge v2, v0, :cond_6b

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 236
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-static {p0, v3, v4, p3, p4}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->printNode(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityNodeInfo;IZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_6b
    return-void
.end method

.method public static printNodeTreeOfWindow(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityWindowInfo;ZZ)V
    .registers 8

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<window id:"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 96
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_26
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 99
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 100
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_3c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->windowTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v3

    if-eqz v3, :cond_58

    const-string v3, "Active"

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_58
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "Focused"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    const/16 p1, 0x3e

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "[root] "

    .line 111
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 113
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->printNode(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityNodeInfo;IZZ)V

    return-void
.end method

.method public static windowTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    const-string p0, "TYPE_Unknown"

    return-object p0

    :cond_12
    const-string p0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object p0

    :cond_15
    const-string p0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object p0

    :cond_18
    const-string p0, "TYPE_SYSTEM"

    return-object p0

    :cond_1b
    const-string p0, "TYPE_INPUT_METHOD"

    return-object p0

    :cond_1e
    const-string p0, "TYPE_APPLICATION"

    return-object p0
.end method
