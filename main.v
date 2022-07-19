import vweb
import net.http
import json

const (
	base_url = "https://nekos.life/api/v2"
	tickle = "/img/tickle"
	slap = "/img/slap"
	poke = "/img/poke"
	pat = "/img/pat"
	neko = "/img/neko"
	meow = "/img/meow"
	lizard = "/img/lizard"
	kiss = "/img/kiss"
	hug = "/img/hug"
	fox_girl = "/img/fox_girl"
	feed = "/img/feed"
	cuddle = "/img/cuddle"
	why = "/why"
	cat_text = "/cat"
	owoify = "/owoify"
	eight_ball = "/8ball"
	fact = "/fact"
	neko_gif = "/img/ngif"
	kemonomimi = "/img/kemonomimi"
	holo = "/img/holo"
	smug = "/img/smug"
	baka = "/img/baka"
	woof = "/img/woof"
	spoiler = "/spoiler"
	wallpaper = "/img/wallpaper"
	goose = "/img/goose"
	gecg = "/img/gecg"
	avatar = "/img/avatar"
	waifu = "/img/waifu"
)

struct App {
	vweb.Context
	port          int
	timeout       int
}

struct ResultJSON {
	url 	string
	status 	int
}

fn main() {
	app := &App{
		port: 1337
		timeout: 100
	}
    vweb.run_at(app, host: "localhost", port: 1337, family: .ip)?
}

fn (mut app App) index() vweb.Result {
	return app.text('Hello world from vweb!')
}

fn request(endpoint string) ?&ResultJSON {
	data := http.get("${base_url}${endpoint}") or { panic("failed to create get request") }
	if data.status_code != 200 {
		make_json := &ResultJSON{
			url: ""
			status: data.status_code
		}
		return make_json
	}
	json_ := json.decode(ResultJSON, data.body)?
	make_json := &ResultJSON{
		url: json_.url
		status: data.status_code
	}
	return make_json
}

// Endpoints
["/img/tickle"]
fn (mut app App) tickle() ?vweb.Result {
	res := request(tickle)?
	return app.json(*res)
}

["/img/slap"]
fn (mut app App) slap() ?vweb.Result {
	res := request(slap)?
	return app.json(*res)
}

["/img/pat"]
fn (mut app App) pat() ?vweb.Result {
	res := request(pat)?
	return app.json(*res)
}

["/img/neko"]
fn (mut app App) neko() ?vweb.Result {
	res := request(neko)?
	return app.json(*res)
}

["/img/meow"]
fn (mut app App) meow() ?vweb.Result {
	res := request(meow)?
	return app.json(*res)
}

["/img/lizard"]
fn (mut app App) lizard() ?vweb.Result {
	res := request(lizard)?
	return app.json(*res)
}

["/img/kiss"]
fn (mut app App) kiss() ?vweb.Result {
	res := request(kiss)?
	return app.json(*res)
}

["/img/hug"]
fn (mut app App) hug() ?vweb.Result {
	res := request(hug)?
	return app.json(*res)
}

["/img/fox_girl"]
fn (mut app App) fox_girl() ?vweb.Result {
	res := request(fox_girl)?
	return app.json(*res)
}

["/img/feed"]
fn (mut app App) feed() ?vweb.Result {
	res := request(feed)?
	return app.json(*res)
}

["/img/cuddle"]
fn (mut app App) cuddle() ?vweb.Result {
	res := request(cuddle)?
	return app.json(*res)
}

["/img/why"]
fn (mut app App) why() ?vweb.Result {
	res := request(why)?
	return app.json(*res)
}

["/img/cat_text"]
fn (mut app App) cat_text() ?vweb.Result {
	res := request(cat_text)?
	return app.json(*res)
}

["/img/owoify"]
fn (mut app App) owoify() ?vweb.Result {
	res := request(owoify)?
	return app.json(*res)
}

["/img/eight_ball"]
fn (mut app App) eight_ball() ?vweb.Result {
	res := request(eight_ball)?
	return app.json(*res)
}

["/img/fact"]
fn (mut app App) fact() ?vweb.Result {
	res := request(fact)?
	return app.json(*res)
}

["/img/neko_gif"]
fn (mut app App) neko_gif() ?vweb.Result {
	res := request(neko_gif)?
	return app.json(*res)
}

["/img/kemonomimi"]
fn (mut app App) kemonomimi() ?vweb.Result {
	res := request(kemonomimi)?
	return app.json(*res)
}

["/img/holo"]
fn (mut app App) holo() ?vweb.Result {
	res := request(holo)?
	return app.json(*res)
}

["/img/smug"]
fn (mut app App) smug() ?vweb.Result {
	res := request(smug)?
	return app.json(*res)
}

["/img/baka"]
fn (mut app App) baka() ?vweb.Result {
	res := request(baka)?
	return app.json(*res)
}

["/img/holo"]
fn (mut app App) holo() ?vweb.Result {
	res := request(holo)?
	return app.json(*res)
}

["/img/woof"]
fn (mut app App) spoiler() ?vweb.Result {
	res := request(spoiler)?
	return app.json(*res)
}

["/img/wallpaper"]
fn (mut app App) wallpaper() ?vweb.Result {
	res := request(wallpaper)?
	return app.json(*res)
}

["/img/goose"]
fn (mut app App) goose() ?vweb.Result {
	res := request(goose)?
	return app.json(*res)
}

["/img/gecg"]
fn (mut app App) gecg() ?vweb.Result {
	res := request(gecg)?
	return app.json(*res)
}

["/img/avatar"]
fn (mut app App) avatar() ?vweb.Result {
	res := request(avatar)?
	return app.json(*res)
}

["/img/waifu"]
fn (mut app App) waifu() ?vweb.Result {
	res := request(waifu)?
	return app.json(*res)
}
