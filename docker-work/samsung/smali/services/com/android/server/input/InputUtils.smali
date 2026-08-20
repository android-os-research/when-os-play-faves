.class public Lcom/android/server/input/InputUtils;
.super Ljava/lang/Object;
.source "InputUtils.java"


# static fields
.field public static final PRODUCT_ID_BKB_KEYBOARD:I = 0x7021

.field public static final PRODUCT_ID_POGO_KEYBOARD:I = 0xa035

.field public static final PRODUCT_ID_TABS2_KEYBOARD:I = 0xa009

.field public static final VENDOR_ID_SAMSUNG:I = 0x4e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBkbKeyboard(II)Z
    .registers 3

    const/16 v0, 0x4e8

    if-ne p0, v0, :cond_a

    const/16 p0, 0x7021

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isMisprintedKeyboard(IILjava/lang/String;)Z
    .registers 4

    const/16 v0, 0x4e8

    if-ne p0, v0, :cond_9

    const p0, 0xa009

    if-eq p1, p0, :cond_11

    :cond_9
    const-string p0, "Tab S5e Book Cover Keyboard"

    .line 136
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isPogoKeyboard(IILjava/lang/String;)Z
    .registers 3

    const/16 p2, 0x4e8

    if-ne p0, p2, :cond_b

    const p0, 0xa035

    if-ne p1, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static sysfsExists(Ljava/lang/String;)Z
    .registers 2

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 49
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", File not found: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static sysfsPrint(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "InputManager"

    const/4 v1, 0x0

    .line 57
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_34
    .catchall {:try_start_3 .. :try_end_12} :catchall_32

    .line 58
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_30
    .catchall {:try_start_12 .. :try_end_28} :catchall_2d

    .line 66
    :try_start_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2b

    :catch_2b
    const/4 p0, 0x1

    return p0

    :catchall_2d
    move-exception p0

    move-object v1, v2

    goto :goto_4f

    :catch_30
    move-object v1, v2

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_4f

    .line 60
    :catch_34
    :goto_34
    :try_start_34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception when printing value of "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_32

    const/4 p0, 0x0

    if-eqz v1, :cond_4e

    .line 66
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4e

    :catch_4e
    :cond_4e
    return p0

    :goto_4f
    if-eqz v1, :cond_54

    :try_start_51
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_54

    .line 71
    :catch_54
    :cond_54
    throw p0
.end method

.method public static sysfsReadInt(Ljava/lang/String;I)I
    .registers 8

    const-string v0, "Failed to read int from "

    const-string v1, "InputManager"

    const/4 v2, 0x0

    .line 104
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_14} :catch_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_2b
    .catchall {:try_start_5 .. :try_end_14} :catchall_29

    .line 105
    :try_start_14
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1c} :catch_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_23
    .catchall {:try_start_14 .. :try_end_1c} :catchall_20

    .line 118
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_7c

    goto :goto_7c

    :catchall_20
    move-exception p0

    move-object v2, v3

    goto :goto_7d

    :catch_23
    move-object v2, v3

    goto :goto_2b

    :catch_25
    move-object v2, v3

    goto :goto_48

    :catch_27
    move-object v2, v3

    goto :goto_62

    :catchall_29
    move-exception p0

    goto :goto_7d

    .line 113
    :catch_2b
    :goto_2b
    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", reason: Exception"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_29

    if-eqz v2, :cond_7c

    .line 118
    :goto_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_7c

    goto :goto_7c

    .line 110
    :catch_48
    :goto_48
    :try_start_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", reason: NumberFormatException"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7c

    goto :goto_44

    .line 107
    :catch_62
    :goto_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", reason: IOException"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_48 .. :try_end_79} :catchall_29

    if-eqz v2, :cond_7c

    goto :goto_44

    :catch_7c
    :cond_7c
    :goto_7c
    return p1

    :goto_7d
    if-eqz v2, :cond_82

    .line 118
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_82

    .line 123
    :catch_82
    :cond_82
    throw p0
.end method

.method public static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, " to "

    const-string v1, "Failed to write "

    const-string v2, "InputManager"

    const/4 v3, 0x0

    .line 78
    :try_start_7
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_49
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_26
    .catchall {:try_start_7 .. :try_end_11} :catchall_24

    .line 79
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_20
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    const/4 p0, 0x1

    .line 90
    :try_start_19
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_6a

    goto :goto_6a

    :catchall_1d
    move-exception p0

    move-object v3, v4

    goto :goto_6b

    :catch_20
    move-object v3, v4

    goto :goto_26

    :catch_22
    move-object v3, v4

    goto :goto_49

    :catchall_24
    move-exception p0

    goto :goto_6b

    .line 85
    :catch_26
    :goto_26
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", reason: Exception"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_24

    if-eqz v3, :cond_69

    .line 90
    :goto_45
    :try_start_45
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_69

    goto :goto_69

    .line 82
    :catch_49
    :goto_49
    :try_start_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", reason: IOException"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_49 .. :try_end_66} :catchall_24

    if-eqz v3, :cond_69

    goto :goto_45

    :catch_69
    :cond_69
    :goto_69
    const/4 p0, 0x0

    :catch_6a
    :goto_6a
    return p0

    :goto_6b
    if-eqz v3, :cond_70

    .line 90
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_70

    .line 95
    :catch_70
    :cond_70
    throw p0
.end method
