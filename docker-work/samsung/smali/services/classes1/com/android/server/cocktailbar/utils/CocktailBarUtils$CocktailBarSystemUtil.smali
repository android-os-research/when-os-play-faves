.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSystemUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateSysfsGripDisable(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 150
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_5c

    .line 155
    :cond_15
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSysfsGripDisable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_33} :catch_73
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_33} :catch_69
    .catchall {:try_start_1 .. :try_end_33} :catchall_67

    const-string v0, "UTF-8"

    if-eqz p0, :cond_42

    :try_start_37
    const-string/jumbo p0, "set_grip_detection,0"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4c

    :cond_42
    const-string/jumbo p0, "set_grip_detection,1"

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 162
    :goto_4c
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_4f} :catch_59
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4f} :catch_56
    .catchall {:try_start_37 .. :try_end_4f} :catchall_53

    .line 170
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_7a

    goto :goto_7a

    :catchall_53
    move-exception p0

    move-object v0, v2

    goto :goto_7b

    :catch_56
    move-exception p0

    move-object v0, v2

    goto :goto_6a

    :catch_59
    move-exception p0

    move-object v0, v2

    goto :goto_74

    .line 152
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "updateSysfsGripDisable : file did not exists or canWrite"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_66} :catch_73
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_66} :catch_69
    .catchall {:try_start_5c .. :try_end_66} :catchall_67

    return-void

    :catchall_67
    move-exception p0

    goto :goto_7b

    :catch_69
    move-exception p0

    .line 166
    :goto_6a
    :try_start_6a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_67

    if-eqz v0, :cond_7a

    .line 170
    :goto_6f
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_7a

    goto :goto_7a

    :catch_73
    move-exception p0

    .line 164
    :goto_74
    :try_start_74
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_67

    if-eqz v0, :cond_7a

    goto :goto_6f

    :catch_7a
    :cond_7a
    :goto_7a
    return-void

    :goto_7b
    if-eqz v0, :cond_80

    .line 170
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_80

    .line 174
    :catch_80
    :cond_80
    throw p0
.end method

.method public static updateWakeupArea(I)V
    .registers 4

    const/4 v0, 0x0

    .line 120
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_44

    .line 124
    :cond_15
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_51
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_47
    .catchall {:try_start_1 .. :try_end_1a} :catchall_45

    const/4 v0, 0x1

    const-string v1, "UTF-8"

    if-ne p0, v0, :cond_2a

    :try_start_1f
    const-string/jumbo p0, "select_wakeful_edge,0"

    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_34

    :cond_2a
    const-string/jumbo p0, "select_wakeful_edge,1"

    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 132
    :goto_34
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_37} :catch_41
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_37} :catch_3e
    .catchall {:try_start_1f .. :try_end_37} :catchall_3b

    .line 140
    :try_start_37
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_58

    goto :goto_58

    :catchall_3b
    move-exception p0

    move-object v0, v2

    goto :goto_59

    :catch_3e
    move-exception p0

    move-object v0, v2

    goto :goto_48

    :catch_41
    move-exception p0

    move-object v0, v2

    goto :goto_52

    :cond_44
    :goto_44
    return-void

    :catchall_45
    move-exception p0

    goto :goto_59

    :catch_47
    move-exception p0

    .line 136
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    if-eqz v0, :cond_58

    .line 140
    :goto_4d
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_58

    goto :goto_58

    :catch_51
    move-exception p0

    .line 134
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_45

    if-eqz v0, :cond_58

    goto :goto_4d

    :catch_58
    :cond_58
    :goto_58
    return-void

    :goto_59
    if-eqz v0, :cond_5e

    .line 140
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5e

    .line 144
    :catch_5e
    :cond_5e
    throw p0
.end method

.method public static updateWakeupGesture(Landroid/content/Context;IZ)V
    .registers 4

    const-string/jumbo p1, "power"

    .line 83
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 84
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 85
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "updateWakeupGesture: factory binary"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    if-eqz p0, :cond_7e

    .line 88
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_7e

    const/4 p0, 0x0

    .line 91
    :try_start_23
    new-instance p1, Ljava/io/File;

    const-string v0, "/sys/class/sec/tsp/cmd"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_60

    .line 95
    :cond_37
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_3c} :catch_6e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3c} :catch_65
    .catchall {:try_start_23 .. :try_end_3c} :catchall_61

    const-string p0, "UTF-8"

    if-eqz p2, :cond_4b

    :try_start_40
    const-string/jumbo p1, "second_screen_enable,1"

    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_55

    :cond_4b
    const-string/jumbo p1, "second_screen_enable,0"

    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 101
    :goto_55
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_58} :catch_5e
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_58} :catch_5c
    .catchall {:try_start_40 .. :try_end_58} :catchall_77

    .line 109
    :goto_58
    :try_start_58
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_7e

    goto :goto_7e

    :catch_5c
    move-exception p0

    goto :goto_68

    :catch_5e
    move-exception p0

    goto :goto_71

    :cond_60
    :goto_60
    return-void

    :catchall_61
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_78

    :catch_65
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 105
    :goto_68
    :try_start_68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v0, :cond_7e

    goto :goto_58

    :catch_6e
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 103
    :goto_71
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_77

    if-eqz v0, :cond_7e

    goto :goto_58

    :catchall_77
    move-exception p0

    :goto_78
    if-eqz v0, :cond_7d

    .line 109
    :try_start_7a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7d

    .line 113
    :catch_7d
    :cond_7d
    throw p0

    :catch_7e
    :cond_7e
    :goto_7e
    return-void
.end method
