.class public Lcom/samsung/android/securefolder/fwwrapper/WindowManagerWrapper;
.super Ljava/lang/Object;
.source "WindowManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlags(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)I
    .registers 6

    const-string v0, "inputFeatures"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_d

    move p1, v3

    goto :goto_22

    :cond_d
    const-string v0, "privateFlags"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move p1, v2

    goto :goto_22

    :cond_17
    const-string v0, "samsungFlags"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    move p1, v1

    goto :goto_22

    :cond_21
    const/4 p1, -0x1

    :goto_22
    if-eqz p1, :cond_36

    if-eq p1, v2, :cond_33

    if-eq p1, v3, :cond_30

    const-string p0, "WindowManagerReflection"

    const-string p1, "ERROR: No matching flag value, hence returning default value."

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 26
    :cond_30
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_38

    .line 23
    :cond_33
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_38

    .line 20
    :cond_36
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_38
    return v1
.end method

.method public static setFlags(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V
    .registers 7

    const-string v0, "inputFeatures"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    move p1, v3

    goto :goto_2c

    :cond_d
    const-string v0, "privateFlags"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p1, 0x0

    goto :goto_2c

    :cond_17
    const-string v0, "samsungFlags"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move p1, v1

    goto :goto_2c

    :cond_21
    const-string v0, "screenDimDuration"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    move p1, v2

    goto :goto_2c

    :cond_2b
    const/4 p1, -0x1

    :goto_2c
    if-eqz p1, :cond_46

    if-eq p1, v3, :cond_43

    if-eq p1, v2, :cond_3f

    if-eq p1, v1, :cond_3c

    const-string p0, "WindowManagerReflection"

    const-string p1, "ERROR: No matching flag value, Failed to set flag."

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 58
    :cond_3c
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_48

    :cond_3f
    int-to-long p1, p2

    .line 55
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_48

    .line 52
    :cond_43
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_48

    .line 49
    :cond_46
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_48
    return-void
.end method
