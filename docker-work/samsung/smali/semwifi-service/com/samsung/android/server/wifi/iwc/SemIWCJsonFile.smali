.class public Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;
.super Lcom/samsung/android/server/wifi/iwc/SemIWCFile;
.source "SemIWCJsonFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/server/wifi/iwc/SemIWCFile;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/google/gson/JsonDeserializer<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    if-eqz p3, :cond_d

    .line 23
    invoke-virtual {p1, p2, p3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    :cond_d
    if-eqz p4, :cond_12

    .line 26
    invoke-virtual {p1, p2, p4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    :cond_12
    if-nez p5, :cond_17

    .line 29
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    .line 31
    :cond_17
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->mGson:Lcom/google/gson/Gson;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic getBufferedReader()Ljava/io/BufferedReader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->getBufferedReader()Ljava/io/BufferedReader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSize()J
    .registers 3

    .line 13
    invoke-super {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isFileExists()Z
    .registers 1

    .line 13
    invoke-super {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->isFileExists()Z

    move-result p0

    return p0
.end method

.method public load()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->getBufferedReader()Ljava/io/BufferedReader;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->mGson:Lcom/google/gson/Gson;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v0, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_15
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    if-eqz v0, :cond_12

    .line 50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_12
    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_17

    :catch_15
    move-exception p0

    .line 47
    :try_start_16
    throw p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    :goto_17
    if-eqz v0, :cond_1c

    .line 50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 52
    :cond_1c
    throw p0
.end method

.method public bridge synthetic readFile()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->readFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public save(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCJsonFile;->writeData(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeData(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->writeData(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeDataAppend(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCFile;->writeDataAppend(Ljava/lang/String;)V

    return-void
.end method
